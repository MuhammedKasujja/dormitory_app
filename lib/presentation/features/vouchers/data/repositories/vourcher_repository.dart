import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/features/vouchers/data/models/models.dart';
import 'package:collection/collection.dart';

import '../../domain/entities/voucher_entity.dart';
import '../../domain/repositories/vourchers_repository.dart';
import '../datasources/vourchers.dart';

class VourcherRepository extends IVourchersRepo {
  @override
  Future<ApiResponse<VourcherModel>> addVourcher(String voucherCode) async {
    await Future.delayed(const Duration(seconds: 2));
    final voucher = vourchers.firstWhereOrNull(
        (element) => element.code.toUpperCase() == voucherCode.toUpperCase());
    if (voucher == null) {
      return ApiResponse.failure('Voucher not available');
    }
    return ApiResponse.success(voucher);
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
    return ApiResponse.success([]);
  }
}
