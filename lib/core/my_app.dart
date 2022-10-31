import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/features/welcome/presentation/pages/welcome_page.dart';

import 'navigators/navigation.dart';
import 'navigators/route.dart';

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
      // theme: getDefaultTheme(),
      // darkTheme: getDarkTheme(),
      // themeMode: ThemeMode.light,
      //
      //
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: WelcomePage.routeName,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          // child: InitProviderWidget(child: child),
          child: child ?? const Offstage(),
        );
      },
    );
  }
}
