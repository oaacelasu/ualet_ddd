import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/pages/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev).then((_) => runApp(AppWidget()));
}
