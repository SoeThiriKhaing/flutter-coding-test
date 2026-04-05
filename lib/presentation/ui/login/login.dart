import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.pushReplacementNamed(context, '/dashboard');
          } else if (state is LoginError) {
            showDialog(
              context: context,
              builder: (ctx) => const AlertDialog(
                  title: Text("Error"), content: Text("Error")),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sign in",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              const Text("Welcome Developer",
                  style: TextStyle(fontSize: 30)),
              const SizedBox(height: 30),
              TextField(
                  key: const Key('username_field'),
                  controller: _userController,
                  decoration: const InputDecoration(labelText: "User Name")),
              TextField(
                  key: const Key('password_field'),
                  controller: _passController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: "Password")),
              const SizedBox(height: 30),
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  if (state is LoginLoading)
                    return const CircularProgressIndicator();
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1DE9B6),
                        minimumSize: const Size(double.infinity, 50)),
                    onPressed: () => context
                        .read<LoginCubit>()
                        .login(_userController.text, _passController.text),
                    child: const Text("Sign In",
                        style: TextStyle(color: Colors.white)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
