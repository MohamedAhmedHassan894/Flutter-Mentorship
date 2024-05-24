import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/routing/routes.dart';
import 'package:flutter_mentorship/features/feature_items/ui/feature_items_screen.dart';
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
      case Routes.featureItems:
        final endpoint = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => FeatureItemsScreen(
            endPoint: endpoint ,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
    }
  }
}
