import 'package:dormitory_app/models/models.dart';

import '../entities/voucher_entity.dart';

abstract class IVourchersRepo {
  Future<ApiResponse<List<VoucherEntity>>> fetchMyVourchers();

  Future<ApiResponse<VoucherEntity>> addVourcher(String voucherCode);

  Future<ApiResponse<VoucherEntity>> editVourcher(VoucherEntity voucher);

  Future<ApiResponse> deleteVourcher(String voucherId);
}
