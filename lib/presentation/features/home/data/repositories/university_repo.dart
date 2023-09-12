import 'package:dormitory_app/models/api_response.dart';

import '../../domain/entities/university.dart';
import '../../domain/repositories/university_repo.dart';
import '../datasources/datasources.dart';

class UniversityRepositoryImp extends UniversityRepo {
  @override
  Future<ApiResponse<List<University>>> fetchPopularUniversities() async {
    return ApiResponse.success(universities);
  }

  @override
  Future<ApiResponse<List<University>>> fetchUniversities() async {
    return ApiResponse.success(universities);
  }

  @override
  Future<ApiResponse<University>> getUniversityDetails(
      String universityId) async {
    return ApiResponse.success(universities.last);
  }
}
