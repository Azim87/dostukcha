import 'package:dartz/dartz.dart';

import '../../data/model/get_loan_history/loan_history_data.dart';
import '../entity/app_response/app_response_entity.dart';

abstract class GetLoanHistoryRepository {
  Future<Either<String, AppResponseEntity<List<LoanHistoryData>>>> getLoanHistory();
}
