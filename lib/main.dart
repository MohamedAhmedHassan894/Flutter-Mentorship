import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/routing/app_router.dart';
import 'package:flutter_mentorship/space_x_app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/database/cache/cache_helper.dart';
import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupServiceLocator();
  await getIt<CacheHelper>().appInitialization();
  await ScreenUtil.ensureScreenSize();
  FlutterNativeSplash.remove();
  runApp(
    SpaceXApp(
      appRouter: AppRouter(),
    ),
  );
}
