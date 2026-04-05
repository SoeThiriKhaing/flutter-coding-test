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
    const Color primaryColor = Color(0xFF1DE9B6);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("User Details", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: BlocBuilder<UserDetailCubit, UserDetailState>(
        builder: (context, state) {
          return state.when(
            // Loading ဖြစ်နေချိန်မှာ ပြမယ့်နေရာ
            initial: () => const Center(child: CircularProgressIndicator(color: primaryColor)),
            error: (msg) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, color: Colors.red, size: 60),
                  const SizedBox(height: 16),
                  Text(msg ?? "Failed to load user info"),
                ],
              ),
            ),
            // Data ရလာတဲ့အခါ ပြမယ့် UI
            ready: (user) => SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Avatar Section
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: primaryColor.withOpacity(0.3), width: 4),
                          ),
                          child: const CircleAvatar(
                            radius: 55,
                            backgroundColor: Color(0xFFF5F5F5),
                            child: Icon(Icons.person, size: 70, color: primaryColor),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(color: primaryColor, shape: BoxShape.circle),
                            child: const Icon(Icons.verified, color: Colors.white, size: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Information Form
                  _buildInfoField(
                    label: "Full Name",
                    value: user?.name,
                    icon: Icons.person_outline,
                  ),
                  const SizedBox(height: 20),

                  _buildInfoField(
                    label: "Email Address",
                    value: user?.email,
                    icon: Icons.email_outlined,
                  ),

                  const SizedBox(height: 40),

                  // Action Button
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        elevation: 0,
                      ),
                      child: const Text(
                        "Done",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // UI ကို ပိုသန့်အောင် Helper Method ခွဲလိုက်ပါတယ်
  Widget _buildInfoField({required String label, String? value, required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[600]),
        ),
        const SizedBox(height: 8),
        TextFormField(
          initialValue: value ?? 'Not Available',
          readOnly: true,
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: const Color(0xFF1DE9B6)),
            filled: true,
            fillColor: const Color(0xFFF9F9F9),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
            ),
          ),
        ),
      ],
    );
  }
}