import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class FutureResultUseCase<ReturnType, ParamType> {
  @protected
  Future<Either<String, ReturnType>> processCall(ParamType params);

  Future<Either<String, ReturnType>> call(ParamType params) async {
    try {
      return await processCall(params);
    } catch (e) {
      return Left("Error when Future Result Use Case: $e");
    }
  }
}
