import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'register_providers.dart';

class InitProviderWidget extends StatelessWidget {
  const InitProviderWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MultiProvider(
          providers: registerProviders,
          child: child ?? const Offstage(),
        );
      },
    );
  }
}
