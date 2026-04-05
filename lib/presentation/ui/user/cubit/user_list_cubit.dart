import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testing/domain/domain.dart';

part 'user_list_state.dart';

part 'user_list_cubit.freezed.dart';

class UserListCubit extends Cubit<UserListState> {
  final UserRepo _userRepo;

  UserListCubit({required UserRepo userRepo})
      : _userRepo = userRepo,
        super(const UserListState.initial());
  Future<void> fetchUsers() async {
    try {
      final users = await _userRepo.getUsers();
      emit(UserListReady(user: users));
    } catch (e) {
      emit(const UserListError("Failed to load users"));
    }
  }
}
