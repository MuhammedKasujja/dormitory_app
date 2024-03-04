import 'package:dormitory_app/presentation/features/home/home.dart';

import '../../domain/repositories/saved_dormitory_repo.dart';

class SavedDormitoryRepositoryImp extends SavedDormitoryRepository {
  SavedDormitoryRepositoryImp({required super.dormitoryBox});

  @override
  Future<bool> addLocalDormitory({required DormitoryModel dormitory}) async {
    dormitoryBox.put(dormitory.id, dormitory);
    return true;
  }

  @override
  Future<List<DormitoryModel>> getLocalDormitories() async {
    if (dormitoryBox.isNotEmpty) {
      try {
        print({'SavedDormitoryRepositoryImp': dormitoryBox.getAt(0)});
        return dormitoryBox.getRange(0, dormitoryBox.length - 1);
      } catch (e) {
        print({'SavedDormitoryRepositoryImpError': e.toString()});
        return [];
      }
    }
    return [];
  }

  @override
  Future<DormitoryModel?> getLocalDormitoryDetails(
      {required String dormitoryId}) async {
    return dormitoryBox.get(dormitoryId);
  }

  @override
  Future<bool> removeLocalDormitory({required String dormitoryId}) async {
    return dormitoryBox.delete(dormitoryId);
  }

  @override
  Future<void> clear() async {
    return dormitoryBox.clear();
  }
}
