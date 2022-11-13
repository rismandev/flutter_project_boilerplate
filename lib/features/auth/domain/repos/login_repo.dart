import 'package:dartz/dartz.dart';
import 'package:flutter_project_boilerplate/features/auth/data/models/login.dart';

abstract class LoginRepo {
  Future<Either<String, ResponseLoginModel>> login(LoginModel data);
}
