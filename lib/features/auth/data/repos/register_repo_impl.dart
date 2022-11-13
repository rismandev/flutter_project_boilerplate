import 'dart:math';

import 'package:flutter_project_boilerplate/features/auth/data/models/register.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_project_boilerplate/features/auth/domain/repos/register_repo.dart';

class RegisterRepoImpl implements RegisterRepo {
  @override
  Future<Either<String, ResponseRegisterModel>> register(
    RegisterModel data,
  ) async {
    return right(
      ResponseRegisterModel(
        id: 1,
        email: data.email,
        name: data.name,
        verifyToken: Random(16).toString(),
      ),
    );
  }
}
