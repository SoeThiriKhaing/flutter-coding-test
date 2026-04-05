// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:testing/domain/entity/user/user.dart';
// import 'package:testing/domain/repo/user_repo/user_repo.dart';
// import 'package:testing/presentation/bloc/user_bloc.dart';
// import 'package:bloc_test/bloc_test.dart';
//
// class MockUserRepository extends Mock implements UserRepo {}
//
// void main() {
//   late UserBloc userBloc;
//   late MockUserRepository mockUserRepository;
//
//   setUp(() {
//     mockUserRepository = MockUserRepository();
//     userBloc = UserBloc(mockUserRepository);
//   });
//
//   tearDown(() {
//     userBloc.close();
//   });
//
//   final tUserList = [
//     UserEntity(id: 1, name: "Test User", email: "test@gmail.com"),
//   ];
//
//   group('UserBloc Tests', () {
//     test('Initial state က UserState.initial() ဖြစ်ရမယ်', () {
//       expect(userBloc.state, const UserState.initial());
//     });
//
//     blocTest<UserBloc, UserState>(
//       'FetchStarted event ခေါ်တဲ့အခါ Loading နဲ့ Success state ထွက်ရမယ်',
//       build: () {
//         // Repository က data ပြန်ပေးဖို့ mock လုပ်ထားခြင်း
//         when(() => mockUserRepository.getUsers()).thenAnswer((_) async => tUserList);
//         return userBloc;
//       },
//       act: (bloc) => bloc.add( UserEvent.started()),
//       expect: () => [
//         const UserState.initial(),
//         UserState.ready(users: tUserList),
//       ],
//       verify: (_) {
//         verify(() => mockUserRepository.getUsers()).called(1);
//       },
//     );
//
//     blocTest<UserBloc, UserState>(
//       'API ခေါ်တာ Error တက်ရင် Error state ထွက်ရမယ်',
//       build: () {
//         when(() => mockUserRepository.getUsers()).thenThrow(Exception('Server Error'));
//         return userBloc;
//       },
//       act: (bloc) => bloc.add(const UserEvent.started()),
//       expect: () => [
//         const UserState.initial(),
//         isA<UserState>().having((s) => s.maybeWhen(error: (m) => m, orElse: () => null), 'message', contains('Server Error')),
//       ],
//     );
//   });
// }


///import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:your_project_name/domain/entities/user_entity.dart';
// import 'package:your_project_name/domain/repositories/user_repository.dart';
// import 'package:your_project_name/presentation/cubit/user_cubit.dart';
// import 'package:your_project_name/presentation/cubit/user_state.dart';
//
// // ၁။ Mock Repository ဆောက်မယ်
// class MockUserRepository extends Mock implements UserRepository {}
//
// void main() {
//   late MockUserRepository mockRepo;
//   late UserCubit userCubit;
//
//   // Test တစ်ခုချင်းစီတိုင်းအတွက် အသစ်ပြန်ဖြစ်အောင် Setup လုပ်မယ်
//   setUp(() {
//     mockRepo = MockUserRepository();
//     userCubit = UserCubit(mockRepo);
//   });
//
//   // Memory leak မဖြစ်အောင် ပိတ်မယ်
//   tearDown(() => userCubit.close());
//
//   // ကိန်းသေ Data တစ်ခု ကြိုသတ်မှတ်မယ်
//   final tUsers = [UserEntity(id: 1, name: "Soe Thiri")];
//
//   group('UserCubit Fetch Users Tests', () {
//
//     // ✅ Scenario 1: Success Case
//     blocTest<UserCubit, UserState>(
//       'အောင်မြင်စွာ Data ရလာတဲ့အခါ Loading ပြီးရင် Loaded state ဖြစ်ရမယ်',
//       build: () {
//         // Mock လုပ်ခြင်း: getUsers ခေါ်ရင် tUsers ကို ပြန်ပေးပါ
//         when(() => mockRepo.getUsers()).thenAnswer((_) async => tUsers);
//         return userCubit;
//       },
//       act: (cubit) => cubit.fetchUsers(),
//       expect: () => [
//         const UserLoading(),
//         UserLoaded(users: tUsers),
//       ],
//       verify: (_) {
//         verify(() => mockRepo.getUsers()).called(1);
//       },
//     );
//
//     // ❌ Scenario 2: Error Case
//     blocTest<UserCubit, UserState>(
//       'Server Error တက်တဲ့အခါ Loading ပြီးရင် Error state ဖြစ်ရမယ်',
//       build: () {
//         // Mock လုပ်ခြင်း: getUsers ခေါ်ရင် Exception ပေးပါ
//         when(() => mockRepo.getUsers()).thenThrow(Exception('Server Failure'));
//         return userCubit;
//       },
//       act: (cubit) => cubit.fetchUsers(),
//       expect: () => [
//         const UserLoading(),
//         const UserError(message: 'Exception: Server Failure'),
//       ],
//     );
//
//     // 📦 Scenario 3: Empty Case (Optional but Good)
//     blocTest<UserCubit, UserState>(
//       'Data မရှိတဲ့အခါ (Empty List) Loaded state မှာ list အလွတ်ဖြစ်ရမယ်',
//       build: () {
//         when(() => mockRepo.getUsers()).thenAnswer((_) async => []);
//         return userCubit;
//       },
//       act: (cubit) => cubit.fetchUsers(),
//       expect: () => [
//         const UserLoading(),
//         const UserLoaded(users: []),
//       ],
//     );
//   });
// }