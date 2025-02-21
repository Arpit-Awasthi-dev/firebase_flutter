import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'firebase_app.dart';
import 'core/injection_container.dart' as di;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  /// Service Locator Initialization
  await di.init();


  /// Get Theme
  final savedThemeMode =
      await AdaptiveTheme.getThemeMode() ?? AdaptiveThemeMode.light;
  runApp(FirebaseApp(theme: savedThemeMode));
}