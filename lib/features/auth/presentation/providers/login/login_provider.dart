import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/my_providers/my_change_notifier.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/widgets/dialog/error_dialog.dart';
import 'package:flutter_project_boilerplate/core/widgets/dialog/success_dialog.dart';
import 'package:flutter_project_boilerplate/features/auth/data/models/login.dart';
import 'package:flutter_project_boilerplate/features/auth/data/repos/login_repo_impl.dart';
import 'package:flutter_project_boilerplate/features/auth/domain/use_cases/process_login.dart';
import 'package:flutter_project_boilerplate/features/dashboard/presentation/pages/dashboard_page.dart';

import 'login_state.dart';

class LoginProvider extends MyChangeNotifier<LoginState> {
  late final ProcessLoginImpl processLogin;

  LoginProvider() : super(LoginState()) {
    processLogin = ProcessLoginImpl(LoginRepoImpl());
  }

  void setState(LoginState newState) {
    state = newState;
  }

  Future<void> login({
    FormState? formState,
    required GlobalKey loginPageKey,
    required TextEditingController username,
    required TextEditingController password,
  }) async {
    final isValidate = formState?.validate() ?? false;

    state = state.copyWith(
      isLoading: true,
      username: username.text.trim(),
      password: password.text.trim(),
    );

    if (isValidate) {
      final result = await processLogin(
        LoginModel(
          username: state.username,
          password: state.password,
        ),
      );

      final loginContext = loginPageKey.currentContext;
      result.fold((error) {
        Future.delayed(const Duration(seconds: 2), () {
          state = state.copyWith(isLoading: false);
          if (loginContext != null) {
            showErrorDialog(loginContext, text: error);
          }
        });
      }, (data) {
        Future.delayed(const Duration(seconds: 2), () {
          state = state.copyWith(isLoading: false);
          if (loginContext != null) {
            showSuccessDialog(
              loginContext,
              text: "Login success!",
              onConfirm: () {
                pushAndRemove(DashboardPage.routeName);
              },
            );
          }
        });
      });
    } else {
      state = state.copyWith(isLoading: false);
    }
  }
}
