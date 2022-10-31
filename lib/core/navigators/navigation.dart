import 'package:flutter/material.dart';

/// For immidate access of [NavigatorState], like `BuildContext`.
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

/// Navigate to new Route
/// [routeName] is required
void navigate(String routeName, {Object? arguments}) {
  final state = navigatorKey.currentState;

  if (state == null) return;

  state.pushNamed(routeName, arguments: arguments);
}

/// Push and remove current Route
/// [routeName] is required
void pushAndRemove(String routeName) {
  final state = navigatorKey.currentState;

  if (state == null) return;

  state.pushNamedAndRemoveUntil(routeName, (route) => false);
}

// Navigation Back
void navigateBack() {
  final state = navigatorKey.currentState;

  if (state != null && state.canPop()) {
    state.pop();
  }
}
