// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_settings_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountSettingsModel _$AccountSettingsModelFromJson(Map<String, dynamic> json) {
  return AccountSettingsModel(
    username: json['username'] as String?,
    email: json['email'] as String?,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$AccountSettingsModelToJson(
        AccountSettingsModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
