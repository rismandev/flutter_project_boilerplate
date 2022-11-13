import 'package:dartz/dartz.dart';
import 'package:flutter_project_boilerplate/features/auth/data/models/login.dart';
import 'package:flutter_project_boilerplate/features/auth/domain/repos/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  @override
  Future<Either<String, ResponseLoginModel>> login(LoginModel data) async {
    if (data.username == "rismandev") {
      if (data.password == "123456") {
        return right(
          ResponseLoginModel(
            id: "user001",
            username: "rismandev",
            token: "token123",
          ),
        );
      }
    }

    return left("Login fail, please check username or password!");
  }
}
