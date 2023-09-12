import 'package:dormitory_app/models/models.dart';

import '../entities/university.dart';

abstract class UniversityRepo {
  Future<ApiResponse<List<University>>> fetchUniversities();
  Future<ApiResponse<List<University>>> fetchPopularUniversities();
  Future<ApiResponse<University>> getUniversityDetails(
    final String universityId,
  );
}
