import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class Users with _$Users {
  const factory Users({
    required Map<String, UserDetail> userInfo,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) =>
      _$UsersFromJson(json);
}

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
    required String firstName,
    required String lastName,
    required String gender,
    required String age,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);
}