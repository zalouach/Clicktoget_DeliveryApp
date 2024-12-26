import 'package:sixam_mart_delivery/features/cash_in_hand/domain/models/withdraw_method_model.dart';
import 'package:sixam_mart_delivery/features/disbursement/domain/repositories/disbursement_repository_interface.dart';
import 'package:sixam_mart_delivery/features/disbursement/domain/models/disbursement_method_model.dart' as disburse;
import 'package:sixam_mart_delivery/features/disbursement/domain/models/disbursement_report_model.dart' as report;
import 'package:sixam_mart_delivery/features/disbursement/domain/services/disbursement_service_interface.dart';

class DisbursementService implements DisbursementServiceInterface {
  final DisbursementRepositoryInterface disbursementRepositoryInterface;
  DisbursementService({required this.disbursementRepositoryInterface});

  @override
  Future<bool> addWithdraw(Map<String?, String> data) async {
    return await disbursementRepositoryInterface.addWithdraw(data);
  }

  @override
  Future<disburse.DisbursementMethodBody?> getDisbursementMethodList() async {
    return await disbursementRepositoryInterface.getList();
  }

  @override
  Future<bool> makeDefaultMethod(Map<String?, String> data) async {
    return await disbursementRepositoryInterface.makeDefaultMethod(data);
  }

  @override
  Future<bool> deleteMethod(int id) async {
    return await disbursementRepositoryInterface.delete(id);
  }

  @override
  Future<report.DisbursementReportModel?> getDisbursementReport(int offset) async {
    return await disbursementRepositoryInterface.getDisbursementReport(offset);
  }

  @override
  Future<List<WidthDrawMethodModel>?> getWithdrawMethodList() async {
    return await disbursementRepositoryInterface.getWithdrawMethodList();
  }

}