import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  /// Check if user can go back.
  final Future<bool> Function()? onWillPop;
  // Configuration for [AppBar]
  final bool useAppBar;
  final String appBarTitle;

  /// bottomNavigationBar from [Scaffold].
  final Widget? bottomNavigationBar;

  /// floatingActionButton from [Scaffold].
  final Widget? floatingActionButton;

  /// bottomSheet from [Scaffold].
  final Widget? bottomSheet;

  /// resizeToAvoidBottomInset from [Scaffold].
  final bool? resizeToAvoidBottomInset;

  /// Body of [Scaffold].
  final Widget body;

  const AppScaffold({
    super.key,
    this.onWillPop,
    this.useAppBar = false,
    this.appBarTitle = "",
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.bottomSheet,
    this.resizeToAvoidBottomInset,
    required this.body,
  });

  PreferredSizeWidget? get appBar {
    if (useAppBar) {
      final title = appBarTitle.isEmpty ? "AppBar Title" : appBarTitle;

      return AppBar(
        title: Text(title),
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        appBar: appBar,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        bottomSheet: bottomSheet,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        body: body,
      ),
    );
  }
}
