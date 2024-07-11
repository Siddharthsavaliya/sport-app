import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_app/model/membership/membership.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    String? role,
    String? institutionName,
    String? institutionId,
    String? userName,
    String? firstname,
    String? lastname,
    String? email,
    Membership? subscription,
    String? phoneNumber,
    String? dpUrl,
    String? path,
    @JsonKey(name: 'DOB') String? dob,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
