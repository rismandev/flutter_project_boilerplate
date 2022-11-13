import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:flutter_project_boilerplate/features/auth/presentation/providers/exports.dart';

final registerProviders = <SingleChildWidget>[
  ChangeNotifierProvider(
    create: (_) => LoginProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider(
    create: (_) => RegisterProvider(),
    lazy: true,
  ),
];
