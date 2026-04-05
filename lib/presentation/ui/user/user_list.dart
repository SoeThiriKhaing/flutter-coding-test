import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../injection.dart';
import '../user_detail/cubit/user_detail_cubit.dart';
import '../user_detail/user_detail.dart';
import 'cubit/user_list_cubit.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});
  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  @override
  void initState() {
    super.initState();
    context.read<UserListCubit>().fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserListCubit, UserListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            ready: (users) => ListView.builder(
              itemCount: users?.length,
              itemBuilder: (context, index) {
                final user = users?[index];
                return ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text(user?.name ?? ''),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BlocProvider(
                          create: (context) => sl<UserDetailCubit>(),
                          child: UserDetailScreen(userId: user?.id ?? 1),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            error: (msg) => Center(child: Text(msg ?? "Error")),
          );
        },
      ),
    );
  }
}