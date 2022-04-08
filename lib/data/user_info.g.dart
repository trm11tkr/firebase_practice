// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Users _$$_UsersFromJson(Map<String, dynamic> json) => _$_Users(
      userInfo: (json['userInfo'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, UserDetail.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_UsersToJson(_$_Users instance) => <String, dynamic>{
      'userInfo': instance.userInfo,
    };

_$_UserDetail _$$_UserDetailFromJson(Map<String, dynamic> json) =>
    _$_UserDetail(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      gender: json['gender'] as String,
      age: json['age'] as String,
    );

Map<String, dynamic> _$$_UserDetailToJson(_$_UserDetail instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'age': instance.age,
    };
