import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/features/vouchers/data/models/models.dart';

import '../../domain/entities/voucher_entity.dart';
import '../../domain/repositories/vourchers_repository.dart';
import '../datasources/vourchers.dart';

class VourcherRepository extends IVourchersRepo {
  @override
  Future<ApiResponse<VourcherModel>> addVourcher(String voucherCode) {
    // TODO: implement addVourcher
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse> deleteVourcher(String voucherId) {
    // TODO: implement deleteVourcher
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<VourcherModel>> editVourcher(VoucherEntity vourcher) {
    // TODO: implement editVourcher
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<List<VourcherModel>>> fetchMyVourchers() async {
    await Future.delayed(const Duration(seconds: 3));
    return ApiResponse.success(vourchers);
  }
}
