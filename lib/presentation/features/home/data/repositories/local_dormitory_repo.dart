import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';

class LocalDormitoryRepositoryImp extends LocalDormitoryRepository {
  LocalDormitoryRepositoryImp({required super.dormitoryBox});

  @override
  Future<bool> addLocalDormitory({required Dormitory dormitory}) async {
    await dormitoryBox.put(dormitory.id, dormitory);
    return true;
  }

  @override
  Future<List<Dormitory>> getLocalDormitories() async {
    return dormitoryBox.values.toList();
  }

  @override
  Future<Dormitory?> getLocalDormitoryDetails(
      {required String dormitoryId}) async {
    return dormitoryBox.get(dormitoryId);
  }

  @override
  Future<bool> removeLocalDormitory({required String dormitoryId}) async {
    await dormitoryBox.delete(dormitoryId);
    return true;
  }

  @override
  Future<void> clear() async {
    await dormitoryBox.clear();
  }
}
