import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/widgets/app_scaffold.dart';
import 'package:flutter_project_boilerplate/core/widgets/loader_indicator/loader_indicator_widget.dart';
import 'package:flutter_project_boilerplate/core/widgets/wide_text_field/wide_text_field_widget.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/register_page.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/providers/exports.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String routeName = "/login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> loginPageKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppScaffold(
      key: loginPageKey,
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Login Account",
                textAlign: TextAlign.center,
                style: textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              WideTextFieldWidget(
                hintText: "Username or email address",
                controller: usernameController,
                focusNode: FocusNode(),
                suffixIcon: const Icon(Icons.person_sharp),
                validator: (value) {
                  final valueString = value ?? "";

                  if (valueString.isEmpty) {
                    return "Please enter username";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10),
              Consumer<LoginProvider>(
                builder: (context, listen, child) {
                  final isShow = listen.state.showPassword;

                  return WideTextFieldWidget(
                    hintText: "Password",
                    controller: passwordController,
                    focusNode: FocusNode(),
                    obsecureText: !isShow,
                    suffixIcon: IconButton(
                      onPressed: () {
                        listen.setState(listen.state.copyWith(
                          showPassword: !isShow,
                        ));
                      },
                      icon: Icon(
                        isShow
                            ? Icons.lock_open_rounded
                            : Icons.lock_outline_rounded,
                      ),
                    ),
                    validator: (value) {
                      final valueString = value ?? "";

                      if (valueString.isEmpty) {
                        return "Please enter password";
                      }

                      return null;
                    },
                  );
                },
              ),
              const SizedBox(height: 10),
              Consumer<LoginProvider>(
                builder: (context, listen, child) {
                  final isLoading = listen.state.isLoading;

                  return ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () => listen.login(
                            loginPageKey: loginPageKey,
                            formState: _formKey.currentState,
                            username: usernameController,
                            password: passwordController),
                    child: isLoading
                        ? const LoaderIndicatorWidget()
                        : const Text("Login", textAlign: TextAlign.center),
                  );
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account?", style: textTheme.bodyMedium),
                  TextButton(
                    onPressed: () => navigate(RegisterPage.routeName),
                    child: const Text(
                      "Register here",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
