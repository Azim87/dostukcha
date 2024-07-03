import 'package:dartz/dartz.dart';

import '../../data/model/operator_answer_settings_data/operator_answer_settings_data.dart';
import '../entity/app_response/app_response_entity.dart';
import '../entity/operator_answer/operator_answer_await_entity.dart';

abstract class OperatorAnswerAwaitRepository {
  Future<Either<String, OperatorAnswerAwaitEntity>> operatorAnswerAwait();

  Future<Either<String, AppResponseEntity<OperatorAnswerSettingsData>>> operatorAnswerSettings();

  Future<Either<String, void>> removeItemFromOperators();
}
