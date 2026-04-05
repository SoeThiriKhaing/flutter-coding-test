import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testing/domain/domain.dart';

part 'user_detail_state.dart';

part 'user_detail_cubit.freezed.dart';

class UserDetailCubit extends Cubit<UserDetailState> {
  final UserRepo _userRepo;

  UserDetailCubit({required UserRepo userRepo})
      : _userRepo = userRepo,
        super(const UserDetailState.initial());

  Future<void> fetchUserDetail(int id) async {
    emit(UserDetailInitial());
    try {
      final user = await _userRepo.getUserDetail(id);
      emit(UserDetailReady(user: user));
    } catch (e) {
      emit(const UserDetailState.error("Failed to fetch user details."));
    }
  }
}
