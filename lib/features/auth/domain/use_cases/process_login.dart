import 'package:dartz/dartz.dart';
import 'package:flutter_project_boilerplate/core/use_cases/future_result_use_case.dart';
import 'package:flutter_project_boilerplate/features/auth/data/models/login.dart';
import 'package:flutter_project_boilerplate/features/auth/domain/repos/login_repo.dart';

abstract class ProcessLogin
    extends FutureResultUseCase<ResponseLoginModel, LoginModel> {}

class ProcessLoginImpl extends ProcessLogin {
  final LoginRepo loginRepo;

  ProcessLoginImpl(this.loginRepo);

  @override
  Future<Either<String, ResponseLoginModel>> processCall(
    LoginModel params,
  ) async {
    return await loginRepo.login(params);
  }
}
