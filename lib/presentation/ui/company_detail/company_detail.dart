import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/presentation/ui/company_detail/cubit/company_detail_cubit.dart';

class CompanyDetailScreen extends StatefulWidget {
  final int companyId;

  const CompanyDetailScreen({super.key, required this.companyId});

  @override
  State<CompanyDetailScreen> createState() => _CompanyDetailScreenState();
}

class _CompanyDetailScreenState extends State<CompanyDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CompanyDetailCubit>().fetchCompanyDetail(widget.companyId);
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF1DE9B6);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Company Details"),
        backgroundColor: primaryColor,
      ),
      body: BlocBuilder<CompanyDetailCubit, CompanyDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator(color: primaryColor)),
            error: (msg) => const Center(child: Text("Failed to load details")),
            ready: (company) => SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // --- Company Logo Section ---
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: primaryColor.withOpacity(0.5), width: 2),
                      ),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey[200],
                        // Logo URL ကို network ကနေ ခေါ်ယူခြင်း
                        backgroundImage: (company?.logo != null && company!.logo!.isNotEmpty)
                            ? NetworkImage(company.logo!)
                            : null,
                        child: (company?.logo == null || company!.logo!.isEmpty)
                            ? const Icon(Icons.business, size: 60, color: Colors.grey)
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // --- Details Form Section ---
                  _buildTextField(
                    label: "Company Name",
                    value: company?.name,
                    icon: Icons.business_center,
                  ),
                  const SizedBox(height: 20),

                  _buildTextField(
                    label: "Address",
                    value: company?.address,
                    icon: Icons.location_on,
                    maxLines: 2,
                  ),

                  const SizedBox(height: 40),

                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text("Close", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextField({required String label, String? value, required IconData icon, int maxLines = 1}) {
    return TextFormField(
      initialValue: value ?? 'N/A',
      readOnly: true,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: const Color(0xFF1DE9B6)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.grey[50],
      ),
    );
  }
}