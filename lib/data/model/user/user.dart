import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testing/testing.dart';


part 'user.freezed.dart';

part 'user.g.dart';

@freezed
abstract class UserModel with _$UserModel implements UserEntity {
  factory UserModel({int? id, String? name, String? email}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
