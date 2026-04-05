import 'package:injectable/injectable.dart';
import '../../testing.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final UserRemoteDataSource remoteDataSource;

  AuthRepoImpl(this.remoteDataSource);

  @override
  Future<String> login(String username, String password) async {
    try {
      final response = await remoteDataSource.login({
        "username": username,
        "password": password,
      });

      final data = response.data;

      if (data['success'] == true) {
        return data['token'] as String;
      } else {
        throw data['message'] ?? "Invalid credentials";
      }
    } catch (e) {
      throw e.toString();
    }
  }
}