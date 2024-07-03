import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/di/injection.dart';
import '../../core/util/utils.dart';
import '../../data/model/contact_type/contact_type.dart';
import '../widgets/widgets.dart';
import 'contacts_cubit.dart';
import 'contacts_state.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _contactsCubit = getIt.get<ContactsCubit>();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => BlocBuilder<ContactsCubit, ContactsState>(
        bloc: _contactsCubit,
        builder: (context, state) {
          if (state.loading) {
            return const LoadingPage();
          }

          return Scaffold(
            extendBodyBehindAppBar: true,
            extendBody: true,
            resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(child: SafeArea(child: _buildBody())),
          );
        },
      );

  Widget _buildBody() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Center(child: SvgPicture.asset(Assets.contact_icon)),
            Center(child: Text('${context.loc!.confirm_contacts} 4/4')),
            Text.rich(
              style: const TextStyle(fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  TextSpan(text: context.loc!.contact_text1),
                  TextSpan(
                    text: context.loc!.contact_text2,
                    style: const TextStyle(
                      color: Palette.appBlue,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(text: context.loc!.contact_text3),
                ],
              ),
            ),
            Center(
              child: Text(
                context.loc!.contact_text4,
                style: const TextStyle(
                  color: Palette.appBlue,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _contactsCubit.contacts.length,
                itemBuilder: (ctx, i) => _contactsForm(i),
              ),
            ),
            InkWell(
              onTap: () => _contactsCubit.add(),
              child: Text(context.loc!.add_contact)
            ),
            AppButton(
              horizontalPadding: 0,
              onPressed: () => _formKey.validateSave(() => _contactsCubit.validateAndSendContactList()),
              value: true,
              text: context.loc!.further,
            ),
            const SizedBox(height: 30),
          ].withSpaceBetween(height: 20),
        ),
      );

  Widget _contactsForm(int index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Divider(thickness: 2),
          ),
          Text(
            '${AppConstants.CONTACT} ${index + 1}',
            style: AppStyles.contactsStyle,
          ),
          Text(context.loc!.contact_text5),
          DropdownButtonFormField<ContactType>(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Palette.inputBorderSideColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Palette.inputBorderSideColor),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              fillColor: Palette.inputBackgroundColor,
              filled: true,
              hintText: context.loc!.who_do_have_to,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
            items: _contactsCubit.state.contactType
                .mapIndexed(
                  (element, r) => DropdownMenuItem<ContactType>(
                    value: element,
                    child: Text(
                      element.name!,
                      style: const TextStyle(color: Palette.black),
                    ),
                  ),
                )
                .toList(),
            isExpanded: true,
            value: _contactsCubit.contacts[index].type,
            onSaved: (val) => _contactsCubit.contacts[index] = _contactsCubit.contacts[index].copyWith(type: val),
            onChanged: (_) {},
            validator: (val) {
              if (val == null) {
                return context.loc!.choose_by_whom;
              }
              return null;
            },
          ),
          Text(context.loc!.tel_number),
          TextFormField(
            keyboardType: TextInputType.phone,
            inputFormatters: [codeMaskFormatter],
            decoration: InputDecoration(
              errorText: _contactsCubit.isContactsValidated ? context.loc!.duplicated_numbers : null,
              hintText: '+996 ### ### ###',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Palette.inputBorderSideColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Palette.inputBorderSideColor),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              fillColor: Palette.inputBackgroundColor,
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
            validator: (val) {
              if (val!.trim() == _contactsCubit.phoneNumber.trim()) return context.loc!.cannot_use_ur_number;

              if (val == null || val.isEmpty || val.length != 18) return context.loc!.enter_full_number;

              if (_contactsCubit.validatePhoneNumbers(val)) {
                return context.loc!.cannot_use_this_number;
              }

              if (!_contactsCubit.validatePhoneCode(val)) {
                return context.loc!.enter_valid_phone_code;
              }

              return null;
            },
            onSaved: (phoneNumber) => _contactsCubit.contacts[index] = _contactsCubit.contacts[index].copyWith(phone: phoneNumber),
          ),
          Text(context.loc!.name_of_contact),
          TextFormField(
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                hintText: 'ФИО',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Palette.inputBorderSideColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Palette.inputBorderSideColor),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                fillColor: Palette.inputBackgroundColor,
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return context.loc!.enter_name;
                }
                return null;
              },
              onSaved: (displayName) => _contactsCubit.contacts[index] = _contactsCubit.contacts[index].copyWith(displayName: displayName)),
        ].withSpaceBetween(height: 13),
      );
}
