import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testing/domain/entity/user/company.dart';
import 'package:testing/domain/repo/company_repo/company_repo.dart';

part 'company_list_state.dart';

part 'company_list_cubit.freezed.dart';

class CompanyListCubit extends Cubit<CompanyListState> {
  final CompanyRepo _companyRepo;

  CompanyListCubit({required CompanyRepo companyRepo})
      : _companyRepo = companyRepo,
        super(const CompanyListState.initial());
  Future<void> fetchCompany() async {
    try {
      final companies = await _companyRepo.getCompany();
      emit(CompanyListReady(data: companies));
    } catch (e) {
      emit(const CompanyListError("Failed to load users"));
    }
  }
}
