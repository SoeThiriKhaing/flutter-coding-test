import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:testing/data/data.dart';
import 'package:testing/data/repo_impl/auth_repo_impl.dart';
import 'package:testing/data/repo_impl/company_repo_impl.dart';
import 'package:testing/domain/domain.dart';
import 'package:testing/domain/repo/company_repo/company_repo.dart';
import 'package:testing/presentation/ui/company/cubit/company_list_cubit.dart';
import 'package:testing/presentation/ui/company_detail/cubit/company_detail_cubit.dart';
import 'package:testing/presentation/ui/home/cubit/home_cubit.dart';
import 'package:testing/presentation/ui/login/cubit/login_cubit.dart';
import 'package:testing/presentation/ui/user/cubit/user_list_cubit.dart';
import 'package:testing/presentation/ui/user_detail/cubit/user_detail_cubit.dart';


final sl=GetIt.instance;
void init(){
  sl.registerLazySingleton(() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'User-Agent': 'PostmanRuntime/7.28.4',
    };
    return dio;
  });
  sl.registerLazySingleton(() => UserRemoteDataSource(sl()));
  sl.registerLazySingleton<UserRepo>(() => UserRepoImpl(sl()));
  sl.registerLazySingleton<AuthRepo>(()=>AuthRepoImpl(sl()));
  sl.registerLazySingleton<CompanyRepo>(() => CompanyRepoImpl(sl()));

  sl.registerFactory(() => LoginCubit(authRepo: sl<AuthRepo>()));
  sl.registerFactory(() => HomeCubit(userRepo: sl<UserRepo>()));
  sl.registerFactory(() => UserListCubit(userRepo: sl<UserRepo>()));
  sl.registerFactory(() => UserDetailCubit(userRepo: sl<UserRepo>()));
  sl.registerFactory(() => CompanyListCubit(companyRepo: sl<CompanyRepo>()));
  sl.registerFactory(() => CompanyDetailCubit(companyRepo: sl<CompanyRepo>()));




}