import 'package:dormitory_app/models/models.dart';

import '../../data/models/voucher.dart';
import '../entities/voucher_entity.dart';

abstract class IVourchersRepo {
  Future<ApiResponse<List<VourcherModel>>> fetchMyVourchers();

  Future<ApiResponse<VourcherModel>> addVourcher(String voucherCode);

  Future<ApiResponse<VourcherModel>> editVourcher(VourcherModel voucher);

  Future<ApiResponse> deleteVourcher(String voucherId);
}
