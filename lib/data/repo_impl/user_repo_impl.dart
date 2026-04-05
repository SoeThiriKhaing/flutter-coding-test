import 'package:injectable/injectable.dart';
import '../../testing.dart';

@LazySingleton(as: UserRepo)
class UserRepoImpl implements UserRepo {
  final UserRemoteDataSource remoteDataSource;

  UserRepoImpl(this.remoteDataSource);

  @override
  Future<List<UserEntity>> getUsers() async {
    final users = await remoteDataSource.getUsers();
    return users
        .map(
          (user) => UserEntity(id: user.id, name: user.name, email: user.email),
        )
        .toList();
  }

  @override
  Future<UserEntity> getHomeProfile(int userId)async {
    return await remoteDataSource.getUserDetail(userId);
  }

  @override
  Future<UserEntity> getUserDetail(int id)async {
    final userModel = await remoteDataSource.getUserDetail(id);

    return UserEntity(
      id: userModel.id,
      name: userModel.name,
      email: userModel.email,
    );
  }

  
}
