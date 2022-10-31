import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/theme/text_theme.dart';
import 'package:flutter_project_boilerplate/core/widgets/app_scaffold.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/register_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static const String routeName = "/welcome_page";

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Welcome Page",
              textAlign: TextAlign.center,
              style: getTextTheme().titleLarge,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                navigate(RegisterPage.routeName);
              },
              child: Text(
                "Register",
                textAlign: TextAlign.center,
                style: getTextTheme().bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.15,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                navigate(LoginPage.routeName);
              },
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: getTextTheme().bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.15,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
