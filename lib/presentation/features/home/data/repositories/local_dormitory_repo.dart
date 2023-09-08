import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class LocalDormitoryRepositoryImp extends LocalDormitoryRepository {
  @override
  Future<dynamic> openBox() async {}

  @override
  Future<bool> addLocalDormitory({required Dormitory dormitory}) async {
    return true;
  }

  @override
  Future<List<Dormitory>> getLocalDormitories() async {
    return [...dormitories];
  }

  @override
  Future<Dormitory?> getLocalDormitoryDetails(
      {required String dormitoryId}) async {
    return dormitories.last;
  }

  @override
  Future<bool> removeLocalDormitory({required String dormitoryId}) async {
    return false;
  }

  @override
  Future<void> clear() {
    throw UnimplementedError();
  }
}
