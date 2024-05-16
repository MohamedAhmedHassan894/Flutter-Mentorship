import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/routing/routes.dart';
import 'package:flutter_mentorship/features/on_boarding/ui/on_boarding_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
    }
  }
}
