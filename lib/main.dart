// import 'package:flutter/material.dart';
// import 'package:testing/presentation/ui/user/user_screen.dart';
//
// import 'injection.dart';
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   init();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: UserScreen(userRepo: sl()),);
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/presentation/presentation.dart';
import 'package:testing/presentation/ui/dashboard/dashboard.dart';

import 'injection.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assignment',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) =>  const OnboardingScreen(),
        '/login': (context) => BlocProvider(
          create: (context) => sl<LoginCubit>(),
          child: const LoginScreen(),
        ),
        '/dashboard': (context) => const DashboardScreen(),

      },


    );
  }
}



