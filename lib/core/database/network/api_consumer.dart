


import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_mentorship/core/errors/failures.dart';

abstract class ApiConsumer {
  Future<Either<ServerFailure,Response>> get1(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  });
  Future<Either<ServerFailure,Response>> post1({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  });
}
