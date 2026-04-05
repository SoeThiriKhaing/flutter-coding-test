import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testing/domain/entity/user/company.dart';
import 'package:testing/testing.dart';


part 'company.freezed.dart';

part 'company.g.dart';

@freezed
abstract class CompanyModel with _$CompanyModel implements CompanyEntity {
  factory CompanyModel({int? id, String? name, String? address}) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
