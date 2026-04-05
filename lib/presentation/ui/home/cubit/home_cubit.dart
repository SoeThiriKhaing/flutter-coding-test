import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testing/domain/domain.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final UserRepo _userRepo;

  HomeCubit({required UserRepo userRepo})
      : _userRepo = userRepo,
        super(const HomeState.initial());

  Future<void> fetchHomeProfile(int userId) async {
    try {
      final user = await _userRepo.getHomeProfile(userId);
      emit(HomeState.ready(user: user));
    } catch (e) {
      emit(HomeState.error("Failed to fetch user data."));
    }
  }
}