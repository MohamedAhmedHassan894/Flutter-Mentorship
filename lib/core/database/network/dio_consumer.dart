import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../errors/failures.dart';
import 'api_consumer.dart';
import 'end_points.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoint.baseUrl;
  }
  static void init() {
    Dio(
      BaseOptions(
        baseUrl: EndPoint.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  @override
  Future<Either<ServerFailure,Response>> get1(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return Right(response);
    } on DioException catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<ServerFailure,Response>> post1({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      return Right(response);
    } on DioException catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
