import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/user_detail_cubit.dart';

class UserDetailScreen extends StatefulWidget {
  final int userId;

  const UserDetailScreen({super.key, required this.userId});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserDetailCubit>().fetchUserDetail(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Detail Form")),
      body: BlocBuilder<UserDetailCubit, UserDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            error: (msg) => const Center(child: Text("Error")),
            ready: (user) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
                  const SizedBox(height: 20),
                  TextFormField(
                    initialValue: user?.name,
                    decoration: const InputDecoration(labelText: "Name", border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    initialValue: user?.email,
                    decoration: const InputDecoration(labelText: "Email", border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}