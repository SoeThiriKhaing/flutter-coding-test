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
    return Scaffold(
      appBar: AppBar(title: const Text("Company Detail Form")),
      body: BlocBuilder<CompanyDetailCubit, CompanyDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            error: (msg) => const Center(child: Text("Error")),
            ready: (company) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
                  const SizedBox(height: 20),
                  TextFormField(
                    initialValue: company?.name,
                    decoration: const InputDecoration(labelText: "Name", border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    initialValue: company?.address,
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