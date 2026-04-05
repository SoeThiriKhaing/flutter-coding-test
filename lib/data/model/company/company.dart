import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testing/domain/entity/user/company.dart';

part 'company.freezed.dart';

part 'company.g.dart';

@freezed
abstract class CompanyModel with _$CompanyModel implements CompanyEntity {
  factory CompanyModel({int? id, String? name, String? address,String? logo}) =
      _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
