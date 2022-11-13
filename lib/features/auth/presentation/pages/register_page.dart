import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/widgets/app_scaffold.dart';
import 'package:flutter_project_boilerplate/core/widgets/loader_indicator/loader_indicator_widget.dart';
import 'package:flutter_project_boilerplate/core/widgets/wide_text_field/wide_text_field_widget.dart';
import 'package:flutter_project_boilerplate/features/auth/data/constants/email_validation.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/providers/exports.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static const String routeName = "/register_page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<ScaffoldState> registerPageKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppScaffold(
      key: registerPageKey,
      body: Form(
        key: _formKey,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Register Account",
                  textAlign: TextAlign.center,
                  style: textTheme.titleLarge,
                ),
                const SizedBox(height: 20),
                WideTextFieldWidget(
                  hintText: "Full name",
                  controller: fullNameController,
                  focusNode: FocusNode(),
                  suffixIcon: const Icon(Icons.person_sharp),
                  validator: (value) {
                    final valueString = value ?? "";

                    if (valueString.isEmpty) {
                      return "Please enter full name";
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 10),
                WideTextFieldWidget(
                  hintText: "Email address",
                  controller: emailController,
                  focusNode: FocusNode(),
                  suffixIcon: const Icon(Icons.email),
                  validator: (value) {
                    final valueString = value ?? "";

                    if (valueString.isEmpty) {
                      return "Please enter email address";
                    } else if (!emailValidation.hasMatch(valueString)) {
                      return "Invalid email address";
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 10),
                Consumer<RegisterProvider>(
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
                        } else if (valueString.length < 8) {
                          return "Password must contains 8 character";
                        }

                        return null;
                      },
                    );
                  },
                ),
                const SizedBox(height: 10),
                Consumer<RegisterProvider>(
                  builder: (context, listen, child) {
                    final isShow = listen.state.showConfirmPassword;

                    return WideTextFieldWidget(
                      hintText: "Password confirmation",
                      controller: confirmPasswordController,
                      focusNode: FocusNode(),
                      obsecureText: !isShow,
                      suffixIcon: IconButton(
                        onPressed: () {
                          listen.setState(listen.state.copyWith(
                            showConfirmPassword: !isShow,
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
                          return "Please enter password again";
                        } else if (valueString != passwordController.text) {
                          return "Password doesn't match";
                        }

                        return null;
                      },
                    );
                  },
                ),
                const SizedBox(height: 10),
                Consumer<RegisterProvider>(
                  builder: (context, listen, child) {
                    final isLoading = listen.state.isLoading;

                    return ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () => listen.register(
                              formState: _formKey.currentState,
                              registerPageKey: registerPageKey,
                              nameController: fullNameController,
                              emailController: emailController,
                              passwordController: passwordController,
                              confirmPassController: confirmPasswordController),
                      child: isLoading
                          ? const LoaderIndicatorWidget()
                          : const Text("Register", textAlign: TextAlign.center),
                    );
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: textTheme.bodyMedium,
                    ),
                    TextButton(
                      onPressed: () => navigate(LoginPage.routeName),
                      child: const Text(
                        "Login here",
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
