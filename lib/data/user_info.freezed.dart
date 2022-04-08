// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Users _$UsersFromJson(Map<String, dynamic> json) {
  return _Users.fromJson(json);
}

/// @nodoc
class _$UsersTearOff {
  const _$UsersTearOff();

  _Users call({required Map<String, UserDetail> userInfo}) {
    return _Users(
      userInfo: userInfo,
    );
  }

  Users fromJson(Map<String, Object?> json) {
    return Users.fromJson(json);
  }
}

/// @nodoc
const $Users = _$UsersTearOff();

/// @nodoc
mixin _$Users {
  Map<String, UserDetail> get userInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res>;
  $Res call({Map<String, UserDetail> userInfo});
}

/// @nodoc
class _$UsersCopyWithImpl<$Res> implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

  final Users _value;
  // ignore: unused_field
  final $Res Function(Users) _then;

  @override
  $Res call({
    Object? userInfo = freezed,
  }) {
    return _then(_value.copyWith(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, UserDetail>,
    ));
  }
}

/// @nodoc
abstract class _$UsersCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$UsersCopyWith(_Users value, $Res Function(_Users) then) =
      __$UsersCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, UserDetail> userInfo});
}

/// @nodoc
class __$UsersCopyWithImpl<$Res> extends _$UsersCopyWithImpl<$Res>
    implements _$UsersCopyWith<$Res> {
  __$UsersCopyWithImpl(_Users _value, $Res Function(_Users) _then)
      : super(_value, (v) => _then(v as _Users));

  @override
  _Users get _value => super._value as _Users;

  @override
  $Res call({
    Object? userInfo = freezed,
  }) {
    return _then(_Users(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, UserDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Users with DiagnosticableTreeMixin implements _Users {
  const _$_Users({required this.userInfo});

  factory _$_Users.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFromJson(json);

  @override
  final Map<String, UserDetail> userInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Users(userInfo: $userInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Users'))
      ..add(DiagnosticsProperty('userInfo', userInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Users &&
            const DeepCollectionEquality().equals(other.userInfo, userInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userInfo));

  @JsonKey(ignore: true)
  @override
  _$UsersCopyWith<_Users> get copyWith =>
      __$UsersCopyWithImpl<_Users>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersToJson(this);
  }
}

abstract class _Users implements Users {
  const factory _Users({required Map<String, UserDetail> userInfo}) = _$_Users;

  factory _Users.fromJson(Map<String, dynamic> json) = _$_Users.fromJson;

  @override
  Map<String, UserDetail> get userInfo;
  @override
  @JsonKey(ignore: true)
  _$UsersCopyWith<_Users> get copyWith => throw _privateConstructorUsedError;
}

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  return _UserDetail.fromJson(json);
}

/// @nodoc
class _$UserDetailTearOff {
  const _$UserDetailTearOff();

  _UserDetail call(
      {required String firstName,
      required String lastName,
      required String gender,
      required String age}) {
    return _UserDetail(
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      age: age,
    );
  }

  UserDetail fromJson(Map<String, Object?> json) {
    return UserDetail.fromJson(json);
  }
}

/// @nodoc
const $UserDetail = _$UserDetailTearOff();

/// @nodoc
mixin _$UserDetail {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res>;
  $Res call({String firstName, String lastName, String gender, String age});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res> implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  final UserDetail _value;
  // ignore: unused_field
  final $Res Function(UserDetail) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDetailCopyWith<$Res> implements $UserDetailCopyWith<$Res> {
  factory _$UserDetailCopyWith(
          _UserDetail value, $Res Function(_UserDetail) then) =
      __$UserDetailCopyWithImpl<$Res>;
  @override
  $Res call({String firstName, String lastName, String gender, String age});
}

/// @nodoc
class __$UserDetailCopyWithImpl<$Res> extends _$UserDetailCopyWithImpl<$Res>
    implements _$UserDetailCopyWith<$Res> {
  __$UserDetailCopyWithImpl(
      _UserDetail _value, $Res Function(_UserDetail) _then)
      : super(_value, (v) => _then(v as _UserDetail));

  @override
  _UserDetail get _value => super._value as _UserDetail;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? age = freezed,
  }) {
    return _then(_UserDetail(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetail with DiagnosticableTreeMixin implements _UserDetail {
  const _$_UserDetail(
      {required this.firstName,
      required this.lastName,
      required this.gender,
      required this.age});

  factory _$_UserDetail.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String gender;
  @override
  final String age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDetail(firstName: $firstName, lastName: $lastName, gender: $gender, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDetail'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetail &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$UserDetailCopyWith<_UserDetail> get copyWith =>
      __$UserDetailCopyWithImpl<_UserDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailToJson(this);
  }
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
      {required String firstName,
      required String lastName,
      required String gender,
      required String age}) = _$_UserDetail;

  factory _UserDetail.fromJson(Map<String, dynamic> json) =
      _$_UserDetail.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get gender;
  @override
  String get age;
  @override
  @JsonKey(ignore: true)
  _$UserDetailCopyWith<_UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
