import 'package:dartz/dartz.dart';
import 'package:flutter_project_boilerplate/features/auth/data/models/register.dart';

abstract class RegisterRepo {
  Future<Either<String, ResponseRegisterModel>> register(RegisterModel data);
}
