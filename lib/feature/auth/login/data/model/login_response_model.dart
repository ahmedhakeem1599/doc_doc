import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String? message;
  @JsonKey(name: "data")
  final UserDataModel? userData;
  final bool? status;
  final int? code;

  LoginResponseModel(this.message, this.userData, this.status, this.code);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

}


@JsonSerializable()
class UserDataModel {
  final String? token;
  @JsonKey(name: "username")
  final String? userName;

  UserDataModel(this.token, this.userName);

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}