import 'package:dartz/dartz.dart';
import 'package:flutter_project_boilerplate/core/use_cases/future_result_use_case.dart';
import 'package:flutter_project_boilerplate/features/auth/data/models/register.dart';
import 'package:flutter_project_boilerplate/features/auth/domain/repos/register_repo.dart';

abstract class ProcessRegister
    extends FutureResultUseCase<ResponseRegisterModel, RegisterModel> {}

class ProcessRegisterImpl extends ProcessRegister {
  final RegisterRepo registerRepo;

  ProcessRegisterImpl(this.registerRepo);

  @override
  Future<Either<String, ResponseRegisterModel>> processCall(
    RegisterModel params,
  ) async {
    return await registerRepo.register(params);
  }
}
