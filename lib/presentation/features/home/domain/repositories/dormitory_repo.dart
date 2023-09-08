import 'package:dormitory_app/models/models.dart';

import '../entities/entities.dart';

abstract class DormitoryRepository {
  Future<ApiResponse<List<Dormitory>>> getDormitories({
    required DormitoryType dormitoryType,
  });

  Future<ApiResponse<Dormitory>> getDormitoryDetails(
      {required String dormitoryId});
}
