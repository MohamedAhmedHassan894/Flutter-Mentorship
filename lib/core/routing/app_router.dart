import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/routing/routes.dart';

import '../../features/splash/splash_page.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );
    }
  }
}
