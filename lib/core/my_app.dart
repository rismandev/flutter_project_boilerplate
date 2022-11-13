import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/features/welcome/presentation/pages/welcome_page.dart';

import 'my_providers/init_provider_widget.dart';
import 'navigators/navigation.dart';
import 'navigators/route.dart';
import 'theme/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      title: 'Flutter Project Boilerplate',
      //
      // Localization
      // supportedLocales: supportedLocales,
      // localizationsDelegates: localizationsDelegates,
      // locale: localeEN,

      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      themeMode: ThemeMode.system,

      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: WelcomePage.routeName,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: InitProviderWidget(child: child),
        );
      },
    );
  }
}
