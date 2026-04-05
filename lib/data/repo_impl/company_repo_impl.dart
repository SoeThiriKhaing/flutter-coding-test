import 'package:injectable/injectable.dart';
import 'package:testing/domain/entity/user/company.dart';
import '../../domain/repo/company_repo/company_repo.dart';
import '../../testing.dart';

@LazySingleton(as: CompanyRepo)
class CompanyRepoImpl implements CompanyRepo {
  final UserRemoteDataSource remoteDataSource;

  CompanyRepoImpl(this.remoteDataSource);

  @override
  Future<List<CompanyEntity>> getCompany() async {
    final companies = await remoteDataSource.getCompanyList();
    return companies
        .map(
          (company) => CompanyEntity(
              id: company.id,
              name: company.name,
              address: company.address,
              logo: company.logo),
        )
        .toList();
  }

  @override
  Future<CompanyEntity> getCompanyDetail(int id) async {
    final companyDetail = await remoteDataSource.getCompanyDetail(id);

    return CompanyEntity(
      id: companyDetail.id,
      name: companyDetail.name,
      address: companyDetail.address,
      logo: companyDetail.logo
    );
  }
}
