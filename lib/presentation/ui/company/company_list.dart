import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/presentation/ui/company/cubit/company_list_cubit.dart';
import 'package:testing/presentation/ui/company_detail/company_detail.dart';
import 'package:testing/presentation/ui/company_detail/cubit/company_detail_cubit.dart';
import '../../../injection.dart';


class CompanyListPage extends StatefulWidget {
  const CompanyListPage({super.key});
  @override
  State<CompanyListPage> createState() => _CompanyListPageState();
}

class _CompanyListPageState extends State<CompanyListPage> {
  @override
  void initState() {
    super.initState();
    context.read<CompanyListCubit>().fetchCompany();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CompanyListCubit, CompanyListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            ready: (company) => ListView.builder(
              itemCount: company?.length,
              itemBuilder: (context, index) {
                final companies = company?[index];
                return ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.business)),
                  title: Text(companies?.name ?? ''),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BlocProvider(
                          create: (context) => sl<CompanyDetailCubit>(),
                          child: CompanyDetailScreen(companyId: companies?.id ?? 1),
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