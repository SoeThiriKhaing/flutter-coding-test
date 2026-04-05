part of 'user_list_cubit.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState.initial() = UserListInitial;
  const factory UserListState.ready({List<UserEntity>? user}) = UserListReady;
  const factory UserListState.error(String? message) = UserListError;



}
