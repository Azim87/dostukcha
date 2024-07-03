import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../config/di/injection.dart';
import '../../config/navigation/app_router.dart';
import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../config/network/network_checker.dart';
import '../../config/shared_prefs/app_prefs.dart';
import '../../config/shared_prefs/shared_keys.dart';
import '../../core/util/globals.dart';
import '../../data/endpoints.dart';
import '../../data/model/contact/contact.dart';
import '../../data/model/contacts_data/contacts_data.dart';
import '../../domain/repository/contact_repository.dart';
import '../../domain/repository/personal_data_consent_checkcode_repository.dart';
import 'contacts_state.dart';

@lazySingleton
class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit(this.contactRepository, this.personalDataConsentCheckCodeRepository, this.networkChecker) : super(const ContactsState()) {
    getCachedPhoneNumber();
    getContactType();
  }

  final ContactRepository contactRepository;
  final PersonalDataConsentCheckRepository personalDataConsentCheckCodeRepository;
  final NetworkChecker networkChecker;

  final prefs = getIt<AppPrefs>();

  late final List<Contact> contacts = List<Contact>.generate(state.contactsSize, (index) => const Contact());

  Future<void> getCachedPhoneNumber() async => emit(state.copyWith(phoneNumber: await prefs.getValue<String>(SharedKeys.PHONE_NUMBER) ?? ''));

  Future<void> getContactType() async {
    _showLoading();

    final either = await contactRepository.getContactType();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.getContactTypes,
      ),
      (success) => emit(state.copyWith.call(contactType: success.data ?? [])),
    );
  }

  void add() {
    contacts.add(const Contact());
    emit(state.copyWith(contactsSize: contacts.length));
  }

  bool validatePhoneNumbers(String _phoneNumber) {
    late final phoneNumbers = {
      '+996 (123) 456 789',
      '+996 (111) 111 111',
      '+996 (222) 222 222',
      '+996 (333) 333 333',
      '+996 (444) 444 444',
      '+996 (555) 555 555',
      '+996 (666) 666 666',
      '+996 (777) 777 777',
      '+996 (888) 888 888',
      '+996 (999) 999 999',
      '+996 (000) 000 000'
    };

    return phoneNumbers.contains(_phoneNumber);
  }

  bool validatePhoneCode(String _phoneNumber) {
    late final phoneCodeValues = {
      '550',
      '551',
      '552',
      '553',
      '554',
      '555',
      '556',
      '557',
      '558',
      '559',
      '755',
      '990',
      '995',
      '999',
      '998',
      '997',
      '770',
      '771',
      '772',
      '773',
      '774',
      '775',
      '776',
      '777',
      '778',
      '779',
      '220',
      '221',
      '222',
      '223',
      '224',
      '225',
      '226',
      '227',
      '700',
      '701',
      '702',
      '703',
      '704',
      '705',
      '706',
      '707',
      '708',
      '709',
      '500',
      '501',
      '502',
      '503',
      '504',
      '505',
      '506',
      '507',
      '508',
      '509',
      '880',
    };
    return phoneCodeValues.any(_phoneNumber.substring(6, 9).contains);
  }

  Future<void> validateAndSendContactList() async {
    await prefs.setValue(SharedKeys.VERIFICATION_KEY, true);

    if (hasDuplicatePhoneNumbers(contacts)) {
      emit(state.copyWith(isContactsValidated: true));
      showErrorDialog(navigatorKey.currentContext!, 'Ошибка: Найдены одинаковые телефонные номера!', () => null);
      return;
    }

    emit(state.copyWith(isContactsValidated: false));

    _showLoading();

    final contactsList = contacts
        .map((e) => ContactsData(
              displayName: e.displayName,
              contactTypeId: e.type?.id,
              phoneNumbers: [PhoneNumber(value: e.phone)],
            ))
        .toList();

    _hideLoading();

    final either = await contactRepository.sendContactList(contacts: jsonEncode(contactsList));

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.sendContactsList,
      ),
      (r) async {
        switch (r.errorCode) {
          case 0:
            await personalDataConsentCheckCode();
            break;

          case -2:
            Navigation.route.goRouter.go(Navs.phone_number);
            break;

          case -3:
            showNetworkErrorAlertDialog(errorMessage: r.message!, callback: () => _hideLoading(), endpoint: Endpoints.sendContactsList);
            break;

          default:
            showNetworkErrorAlertDialog(errorMessage: r.message!, callback: () => _hideLoading(), endpoint: Endpoints.sendContactsList);
        }
      },
    );
  }

  bool hasDuplicatePhoneNumbers(List<Contact> contacts) {
    final phoneNumbers = contacts.map((contact) => contact.phone);
    final uniquePhoneNumbers = Set<String>.from(phoneNumbers);
    return uniquePhoneNumbers.length < phoneNumbers.length;
  }

  bool hasPhoneNumber(List<Contact> contacts, String phoneNumber) {
    return contacts.any((contact) => contact.phone == phoneNumber);
  }

  Future<void> personalDataConsentCheckCode() async {
    _showLoading();
    final either = await personalDataConsentCheckCodeRepository.personalDataConsentCheckCode();

    _hideLoading();

    either.fold(
      (error) => showNetworkErrorAlertDialog(
        errorMessage: error,
        callback: () {},
        endpoint: Endpoints.personalDataConsentCheckCode,
      ),
      (success) async {
        switch (success.errorCode) {
          case 1:
            showErrorDialog(navigatorKey.currentContext!, success.message!, () => Navigation.route.goRouter.go(Navs.phone_number));
            break;
          case 2:
            Navigation.route.goRouter.push(Navs.personal_data, extra: await getCulture());
            break;
          case 3:
            Navigation.route.goRouter.go(Navs.preliminary_check);
            break;
          case 4:
            Navigation.route.goRouter.push(Navs.personal_data, extra: await getCulture());
            break;
          default:
            Navigation.route.goRouter.go(Navs.preliminary_check);
        }
      },
    );
  }

  String get phoneNumber => state.phoneNumber!;

  bool get isContactsValidated => state.isContactsValidated;

  void _showLoading() => emit(state.copyWith.call(loading: true));

  void _hideLoading() => emit(state.copyWith.call(loading: false));
}
