import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/theme/text_theme.dart';
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
              style: getTextTheme().titleLarge,
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                navigateBack();
              },
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(color: Theme.of(context).primaryColor, width: 1.5),
                ),
              ),
              child: Text(
                "Back",
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
