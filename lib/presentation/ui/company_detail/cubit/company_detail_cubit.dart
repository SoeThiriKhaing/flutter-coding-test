import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:testing/domain/entity/user/company.dart';
import 'package:testing/domain/repo/company_repo/company_repo.dart';

part 'company_detail_state.dart';

part 'company_detail_cubit.freezed.dart';

@injectable
class CompanyDetailCubit extends Cubit<CompanyDetailState> {
  final CompanyRepo _companyRepo;

  CompanyDetailCubit({required CompanyRepo companyRepo})
      : _companyRepo = companyRepo,
        super(const CompanyDetailState.initial());

  Future<void> fetchCompanyDetail(int id) async {
    try {
      final company = await _companyRepo.getCompanyDetail(id);
      emit(CompanyDetailReady(data: company));
    } catch (e) {
      emit(const CompanyDetailError("Failed to fetch user details."));
    }
  }
}
