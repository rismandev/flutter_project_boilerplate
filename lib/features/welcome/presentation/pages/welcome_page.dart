import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/widgets/app_scaffold.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/register_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppScaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Welcome Page",
              textAlign: TextAlign.center,
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                navigate(RegisterPage.routeName);
              },
              child: const Text("Register", textAlign: TextAlign.center),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                navigate(LoginPage.routeName);
              },
              child: const Text("Login", textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
