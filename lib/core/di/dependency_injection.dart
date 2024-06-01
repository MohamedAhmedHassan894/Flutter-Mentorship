import 'package:dio/dio.dart';
import 'package:flutter_mentorship/core/database/network/dio_consumer.dart';
import 'package:get_it/get_it.dart';
import '../database/cache/cache_helper.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  // this to make copy of the DioConsumer object and use it when i need
  getIt.registerLazySingleton(() => DioConsumer(dio: Dio()));
}
