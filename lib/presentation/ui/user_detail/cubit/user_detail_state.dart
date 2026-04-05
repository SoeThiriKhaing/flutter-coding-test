part of 'user_detail_cubit.dart';

@freezed
class UserDetailState with _$UserDetailState {
  const factory UserDetailState.initial() = UserDetailInitial;
  const factory UserDetailState.ready({UserEntity? user}) = UserDetailReady;
  const factory UserDetailState.error(String? message) = UserDetailError;
}
