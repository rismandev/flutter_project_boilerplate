import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class FutureOptionUseCase<ParamType> {
  @protected
  Future<Option<String>> processCall(ParamType params);

  Future<Option<String>> call(ParamType params) async {
    try {
      return await processCall(params);
    } catch (e) {
      return Some("Error when Future Option Use Case: $e");
    }
  }
}
