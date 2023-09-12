import 'package:hive/hive.dart';

import '../entities/entities.dart';

abstract class LocalDormitoryRepository {
  final Box<Dormitory> dormitoryBox;
  LocalDormitoryRepository({required this.dormitoryBox});

  Future<List<Dormitory>> getLocalDormitories();

  Future<Dormitory?> getLocalDormitoryDetails({required String dormitoryId});

  Future<bool> addLocalDormitory({required Dormitory dormitory});

  Future<bool> removeLocalDormitory({required String dormitoryId});

  Future<void> clear();
}
