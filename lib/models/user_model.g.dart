// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
    };

_$_AuthUser _$$_AuthUserFromJson(Map<String, dynamic> json) => _$_AuthUser(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_AuthUserToJson(_$_AuthUser instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
