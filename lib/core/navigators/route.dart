import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/widgets/app_scaffold.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_project_boilerplate/features/auth/presentation/pages/register_page.dart';
import 'package:flutter_project_boilerplate/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:flutter_project_boilerplate/features/welcome/presentation/pages/welcome_page.dart';

Route<MaterialPageRoute> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case WelcomePage.routeName:
      return MaterialPageRoute(builder: (_) => const WelcomePage());
    case LoginPage.routeName:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case RegisterPage.routeName:
      return MaterialPageRoute(builder: (_) => const RegisterPage());
    case DashboardPage.routeName:
      return MaterialPageRoute(builder: (_) => const DashboardPage());
    default:
      return MaterialPageRoute(
        builder: (_) => AppScaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}
