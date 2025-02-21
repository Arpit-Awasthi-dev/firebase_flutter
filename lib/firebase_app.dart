import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/injection_container.dart' as di;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/bloc_providers.dart';
import 'core/navigation/navigation_service.dart';
import 'core/navigation/routes.dart';
import 'core/theme/app_theme.dart';
import 'presentation/pages/login_page.dart';

class FirebaseApp extends StatelessWidget {
  final AdaptiveThemeMode theme;

  const FirebaseApp({
    required this.theme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: BlocProviders.toGenerateProviders(),
      child: AdaptiveTheme(
        light: AppTheme.light,
        dark: AppTheme.dark,
        initial: theme,
        builder: (light, dark) {
          return Builder(
            builder: (context) {
              return MaterialApp(
                home: const LoginPage(),
                theme: light,
                darkTheme: dark,
                navigatorKey: di.sl<NavigationService>().navigatorKey,
                onGenerateRoute: (settings) =>
                    Routers.toGenerateRoute(settings),
                debugShowCheckedModeBanner: false,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
              );
            },
          );
        },
      ),
    );
  }
}
