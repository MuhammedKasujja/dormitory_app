import 'package:dormitory_app/presentation/features/home/home.dart';
import 'package:hive/hive.dart';

abstract class SavedDormitoryRepository {
  final Box<DormitoryModel> dormitoryBox;
  SavedDormitoryRepository({required this.dormitoryBox});

  Future<List<DormitoryModel>> getLocalDormitories();

  Future<DormitoryModel?> getLocalDormitoryDetails({required String dormitoryId});

  Future<bool> addLocalDormitory({required DormitoryModel dormitory});

  Future<bool> removeLocalDormitory({required String dormitoryId});

  Future<void> clear();
}
