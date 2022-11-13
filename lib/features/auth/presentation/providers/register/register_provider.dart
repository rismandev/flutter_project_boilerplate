import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/my_providers/my_change_notifier.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/widgets/dialog/error_dialog.dart';
import 'package:flutter_project_boilerplate/core/widgets/dialog/success_dialog.dart';
import 'package:flutter_project_boilerplate/features/auth/data/models/register.dart';
import 'package:flutter_project_boilerplate/features/auth/data/repos/register_repo_impl.dart';
import 'package:flutter_project_boilerplate/features/auth/domain/use_cases/process_register.dart';
import 'package:flutter_project_boilerplate/features/dashboard/presentation/pages/dashboard_page.dart';

import 'register_state.dart';

class RegisterProvider extends MyChangeNotifier<RegisterState> {
  late final ProcessRegisterImpl processRegister;

  RegisterProvider() : super(RegisterState()) {
    processRegister = ProcessRegisterImpl(RegisterRepoImpl());
  }

  void setState(RegisterState newState) {
    state = newState;
  }

  Future<void> register({
    FormState? formState,
    required GlobalKey registerPageKey,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController confirmPassController,
  }) async {
    final isValidate = formState?.validate() ?? false;

    state = state.copyWith(
      isLoading: true,
      fullName: nameController.text.trim(),
      emailAddress: emailController.text.trim(),
      password: passwordController.text.trim(),
      confirmPassword: confirmPassController.text.trim(),
    );

    if (isValidate) {
      final result = await processRegister(
        RegisterModel(
          name: state.fullName,
          email: state.emailAddress,
          password: state.password,
          confirmPassword: state.confirmPassword,
        ),
      );

      final registerContext = registerPageKey.currentContext;

      result.fold(
        (error) {
          Future.delayed(const Duration(seconds: 2), () {
            state = state.copyWith(isLoading: false);
            if (registerContext != null) {
              showErrorDialog(registerContext, text: error);
            }
          });
        },
        (data) {
          Future.delayed(const Duration(seconds: 3), () {
            state = state.copyWith(isLoading: false);
            if (registerContext != null) {
              showSuccessDialog(
                registerContext,
                text: "Register success!",
                onConfirm: () {
                  pushAndRemove(DashboardPage.routeName);
                },
              );
            }
          });
        },
      );
    } else {
      state = state.copyWith(isLoading: false);
    }
  }
}
