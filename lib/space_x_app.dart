import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/theme/app_colors.dart';

class SpaceXApp extends StatelessWidget {
  final AppRouter appRouter;
  const SpaceXApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Inter",
          primaryColor: AppColors.black,
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
          ),
          scaffoldBackgroundColor: Colors.black,
        ),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
