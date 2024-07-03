import 'package:dartz/dartz.dart';

import '../../data/model/contact_type/contact_type.dart';
import '../entity/app_response/app_response_entity.dart';

abstract class ContactRepository {
  Future<Either<String, AppResponseEntity<List<ContactType>>>> getContactType();
  Future<Either<String, AppResponseEntity<dynamic>>> sendContactList({required String contacts});
}
