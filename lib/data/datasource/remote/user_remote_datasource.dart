import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:testing/data/model/company/company.dart';
import 'package:testing/domain/entity/user/company.dart';

import '../../../testing.dart';

part 'user_remote_datasource.g.dart';

@RestApi(baseUrl: "https://json-placeholder.mock.beeceptor.com/")
abstract class UserRemoteDataSource {
  factory UserRemoteDataSource(Dio dio) = _UserRemoteDataSource;

  @POST("/login")
  Future<HttpResponse> login(@Body() Map<String, dynamic> body);

  @GET("/users/{id}")
  Future<UserModel> getHomeUser(@Path("id") int id);

  @GET("/users")

  Future<List<UserModel>> getUsers();

  @GET("/users/{id}")
  Future<UserModel> getUserDetail(@Path("id") int id);

  @GET("/companies")
  Future<List<CompanyModel>> getCompanyList();

  @GET("/companies/{id}")
  Future<CompanyModel> getCompanyDetail(@Path("id") int id);

}