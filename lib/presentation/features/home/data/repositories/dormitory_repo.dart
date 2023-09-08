import 'package:dormitory_app/models/models.dart';

import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class DormitoryRepositoryImp extends DormitoryRepository {
  @override
  Future<ApiResponse<List<Dormitory>>> getDormitories(
      {required DormitoryType dormitoryType}) async {
    await Future.delayed(const Duration(seconds: 2));
    return ApiResponse.success(dormitories);
  }

  @override
  Future<ApiResponse<Dormitory>> getDormitoryDetails(
      {required String dormitoryId}) async {
    await Future.delayed(const Duration(seconds: 2));
    return ApiResponse.success(dormitories.first);
  }
}
