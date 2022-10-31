import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/navigators/navigation.dart';
import 'package:flutter_project_boilerplate/core/widgets/app_scaffold.dart';
import 'package:flutter_project_boilerplate/features/welcome/presentation/pages/welcome_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const String routeName = "/dashboard_page";

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppScaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Dashboard Page",
              textAlign: TextAlign.center,
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => pushAndRemove(WelcomePage.routeName),
              child: const Text("Logout", textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
