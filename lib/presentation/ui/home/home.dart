import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/presentation/ui/home/cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  final int userId;

  const HomePage({super.key, this.userId = 1});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String aboutMeText =
      "Experienced Flutter developer with a focus on writing clean, maintainable, and testable code using BLoC and Clean Architecture.";
  static const List<String> skillList = [
    "Flutter",
    "Dart",
    "Clean Architecture",
    "BLoC",
    "REST API",
    "Unit Testing"
  ];

  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().fetchHomeProfile(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF1DE9B6);

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeInitial) {
            return const Center(
                child: CircularProgressIndicator(color: primaryColor));
          } else if (state is HomeReady) {
            final user = state.user;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                        top: 60, bottom: 40, left: 24, right: 24),
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child:
                              Icon(Icons.person, size: 60, color: primaryColor),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          user?.name ?? '',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          user?.email ?? '',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),

                  _buildSectionTitle("About Me"),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(aboutMeText,
                        style: TextStyle(
                            fontSize: 15, height: 1.5, color: Colors.black87)),
                  ),

                  _buildSectionTitle("My Skill"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: skillList
                          .map((skill) => Chip(
                                label: Text(skill),
                                backgroundColor: primaryColor.withOpacity(0.1),
                                side: BorderSide.none,
                                labelStyle: const TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            );
          } else if (state is HomeError) {
            return const Center(child: Text("Error"));
          }
          return const SizedBox();
        },
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 12),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
