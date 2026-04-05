part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.ready({
    UserEntity? user,
}) = HomeReady;
  const factory HomeState.error(String? message) = HomeError;


}
