import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/widgets/app_scaffold.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  static const String routeName = "/register_page";

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Register Page",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                navigate(LoginPage.routeName);
              },
              child: const Text("Login"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                navigateBack();
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
