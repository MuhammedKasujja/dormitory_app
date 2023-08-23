import 'package:collection/collection.dart';
import 'package:dormitory_app/models/models.dart';

import '../../domain/repositories/auth_repository.dart';
import '../datasources/users.dart';
import '../models/models.dart';

class AuthRepository implements IAuthRepository {
  @override
  Future<ApiResponse<UserModel>> login({required String email, required String password}) async{
    final user = users.firstWhereOrNull((user) => user.email == email && user.gender == password);
    if(user == null){
      return ApiResponse.failure('Please check your email and password');
    }
    return ApiResponse.success(user);
  }

  @override
  Future<UserModel> register(
      {required String firstName,
      required String lastName,
      required String email,
      required String telephone,
      required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
