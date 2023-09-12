import 'package:dormitory_app/models/models.dart';

import '../entities/city.dart';

abstract class CityRepo {
  Future<ApiResponse<List<City>>> fetchPopularCities();
}
