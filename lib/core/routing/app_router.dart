import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/routing/routes.dart';
import 'package:flutter_mentorship/features/home/ui/home_page.dart';
import 'package:flutter_mentorship/features/on_boarding/ui/on_boarding_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingPage:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
    }
  }
}
