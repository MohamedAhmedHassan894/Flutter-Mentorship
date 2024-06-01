import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/routing/routes.dart';
import 'package:flutter_mentorship/core/utils/feature_requrments.dart';
import 'package:flutter_mentorship/features/company/ui/company_details_screen.dart';
import 'package:flutter_mentorship/features/crews/ui/crew_details_screen.dart';
import 'package:flutter_mentorship/features/dragons/ui/dragon_details_screen.dart';
import 'package:flutter_mentorship/features/feature_items/ui/feature_items_screen.dart';
import 'package:flutter_mentorship/features/home/ui/home_page.dart';
import 'package:flutter_mentorship/features/launches/ui/launch_details_screen.dart';
import 'package:flutter_mentorship/features/on_boarding/ui/on_boarding_view.dart';
import 'package:flutter_mentorship/features/rockets/ui/rocket_details_screen.dart';

import '../database/cache/cache_helper.dart';

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
      case Routes.rocketsPage:
        final allData = settings.arguments as FeatureRequirements;
        return MaterialPageRoute(
          builder: (_) =>  RocketDetailsScreen(
            allData: allData,
          ),
        );
      case Routes.launchesPage:
        final allData = settings.arguments as FeatureRequirements;
        return MaterialPageRoute(
          builder: (_) =>  LaunchDetailsScreen(
            allData: allData,
          ),
        );
      case Routes.dragonsPage:
        final allData = settings.arguments as FeatureRequirements;
        return MaterialPageRoute(
          builder: (_) =>  DragonDetailsScreen(
            allData: allData,
          ),
        );
      case Routes.crewPage:
        final allData = settings.arguments as FeatureRequirements;
        return MaterialPageRoute(
          builder: (_) =>  CrewDetailsScreen(
            allData: allData,
          ),
        );
      case Routes.companyPage:
        final allData = settings.arguments as FeatureRequirements;
        return MaterialPageRoute(
          builder: (_) =>  CompanyDetailsScreen(
            allData: allData,
          ),
        );
      default:
        bool logged = CacheHelper().getData(key: 'login') ?? false;
        return MaterialPageRoute(
          builder: (_) => logged == true ? const HomePage() :const OnBoardingScreen(),
        );
    }
  }
}
