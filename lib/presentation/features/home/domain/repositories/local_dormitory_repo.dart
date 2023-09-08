import '../entities/entities.dart';

abstract class LocalDormitoryRepository {
  Future<dynamic> openBox();

  Future<List<Dormitory>> getLocalDormitories();

  Future<Dormitory?> getLocalDormitoryDetails({required String dormitoryId});

  Future<bool> addLocalDormitory({required Dormitory dormitory});

  Future<bool> removeLocalDormitory({required String dormitoryId});

  Future<void> clear();
}
