import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/presentation/ui/company/company_list.dart';
import 'package:testing/presentation/ui/company/cubit/company_list_cubit.dart';
import 'package:testing/presentation/ui/home/cubit/home_cubit.dart';
import 'package:testing/presentation/ui/user/cubit/user_list_cubit.dart';

import '../../../injection.dart';
import '../home/home.dart';
import '../user/user_list.dart';

class DashboardScreen extends StatefulWidget {

  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _idx = 0;


  late final List<Widget> _tabs = [
    BlocProvider(
      create: (context) => sl<HomeCubit>(),      child: const HomePage(userId: 1),
    ),
    BlocProvider(
      create: (context) => sl<UserListCubit>(),      child: const UserListPage(),
    ),
    BlocProvider(
      create: (context) => sl<CompanyListCubit>(),      child: const CompanyListPage(),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: const Color(0xFF1DE9B6),
        elevation: 0,
      ),

      body: IndexedStack(
        index: _idx,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _idx,
        onTap: (i) => setState(() => _idx = i),
        selectedItemColor: const Color(0xFF1DE9B6),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: "Company"),
        ],
      ),
    );
  }
}