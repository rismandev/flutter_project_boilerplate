import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/widgets/app_scaffold.dart';
import 'package:flutter_project_boilerplate/core/widgets/wide_text_field/wide_text_field_widget.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/register_page.dart';
import 'package:flutter_project_boilerplate/features/dashboard/presentation/pages/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String routeName = "/login_page";

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppScaffold(
      body: Container(
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
              controller: TextEditingController(),
              focusNode: FocusNode(),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_sharp),
              ),
            ),
            const SizedBox(height: 10),
            WideTextFieldWidget(
              hintText: "Password",
              controller: TextEditingController(),
              focusNode: FocusNode(),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => pushAndRemove(DashboardPage.routeName),
              child: const Text("Login", textAlign: TextAlign.center),
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
    );
  }
}
