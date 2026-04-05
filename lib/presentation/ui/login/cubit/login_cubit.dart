import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:testing/domain/domain.dart';

part 'login_state.dart';

part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;

  LoginCubit({required AuthRepo authRepo})
      : _authRepo = authRepo,
        super(const LoginState.initial());

  Future<void> login(String user, String pass) async {
    try {
      final result = await _authRepo.login(user, pass);
      emit(LoginState.success());
    } catch (e) {
      emit(LoginState.error(e.toString()));
    }
  }
}