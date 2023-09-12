import 'package:dormitory_app/models/api_response.dart';

import '../../domain/entities/city.dart';
import '../../domain/repositories/city_repo.dart';
import '../datasources/datasources.dart';

class CityRepositoryImp extends CityRepo {
  @override
  Future<ApiResponse<List<City>>> fetchPopularCities() async {
    return ApiResponse.success(cities);
  }
}
