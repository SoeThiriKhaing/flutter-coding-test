import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing/domain/domain.dart';
import 'package:testing/presentation/presentation.dart';
import 'package:testing/presentation/ui/user_detail/cubit/user_detail_cubit.dart';

class MockUserRepo extends Mock implements UserRepo {}
class MockAuthRepo extends Mock implements AuthRepo {}

void main() {
  late LoginCubit loginCubit;
  late UserDetailCubit userDetailCubit;
  late MockAuthRepo mockAuthRepo;
  late MockUserRepo mockUserRepo;

  setUpAll(() {
    registerFallbackValue(0);
    registerFallbackValue(const LoginState.initial());
  });

  setUp(() {
    mockAuthRepo = MockAuthRepo();
    mockUserRepo = MockUserRepo();
    loginCubit = LoginCubit(authRepo: mockAuthRepo);
    userDetailCubit = UserDetailCubit(userRepo: mockUserRepo);
  });

  tearDown(() {
    loginCubit.close();
    userDetailCubit.close();
  });

  group('Login Logic Test', () {
    blocTest<LoginCubit, LoginState>(
      'Login အောင်မြင်ရင် Loading ပြီး Success ဖြစ်ရမယ်',
      build: () {
        when(() => mockAuthRepo.login(any(), any()))
            .thenAnswer((_) async => "token_123");
        return loginCubit;
      },
      act: (cubit) => cubit.login("admin", "123456"),
      expect: () => [
        const LoginState.loading(),
        const LoginState.success()
      ],
    );
  });

  group('User Detail Logic Test', () {
    final tUser = UserEntity(id: 1, name: "Mg Mg", email: "mgmg@gmail.com");

    blocTest<UserDetailCubit, UserDetailState>(
      'User ID ပို့လိုက်ရင် Data မှန်ကန်စွာ ထွက်လာရမယ်',
      build: () {
        when(() => mockUserRepo.getUserDetail(1))
            .thenAnswer((_) async => tUser);
        return userDetailCubit;
      },
      act: (cubit) => cubit.fetchUserDetail(1),
      expect: () => [
        const UserDetailState.initial(),
        UserDetailState.ready(user: tUser),
      ],
    );
  });
}