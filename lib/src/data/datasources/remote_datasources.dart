// ignore_for_file: deprecated_member_use
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:study/src/core/utils/responses.dart';

part 'remote_datasources.g.dart';

@RestApi(baseUrl: 'https://api.slingacademy.com/v1/sample-data')
abstract class RemoteDataSources {
  factory RemoteDataSources(Dio dio, {String baseUrl}) = _RemoteDataSources;

  @GET('/users/')
  Future<UserResponseModel> getAllUsers();

  @GET('/blog-posts/')
  Future<BlogResponseModel> getAllBlogs();



}
