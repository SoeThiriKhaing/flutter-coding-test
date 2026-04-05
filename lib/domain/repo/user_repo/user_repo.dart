import 'package:testing/domain/domain.dart';

abstract class UserRepo {
  Future<List<UserEntity>>getUsers();
  Future<UserEntity> getHomeProfile(int userId);
  Future<UserEntity> getUserDetail(int id);

}