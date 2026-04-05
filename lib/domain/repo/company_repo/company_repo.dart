import 'package:testing/domain/entity/user/company.dart';

abstract class CompanyRepo {
  Future<List<CompanyEntity>>getCompany();
  Future<CompanyEntity> getCompanyDetail(int id);

}