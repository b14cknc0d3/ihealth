// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ihealth_credencial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IHealthCredencial _$IHealthCredencialFromJson(Map<String, dynamic> json) =>
    IHealthCredencial(
      apiName: json['APIName'] as String,
      accessToken: json['AccessToken'] as String,
      expires: json['Expires'] as int,
      refreshToken: json['RefreshToken'] as String,
      refreshTokenExpires: json['RefreshTokenExpires'] as int,
      uuid: json['UUID'] as String,
      userId: json['UserID'] as String,
      userOpenId: json['UserOpenID'] as String,
      userRegion: json['UserRegion'] as String,
      clientPara: json['client_para'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$IHealthCredencialToJson(IHealthCredencial instance) =>
    <String, dynamic>{
      'APIName': instance.apiName,
      'AccessToken': instance.accessToken,
      'Expires': instance.expires,
      'RefreshToken': instance.refreshToken,
      'RefreshTokenExpires': instance.refreshTokenExpires,
      'UUID': instance.uuid,
      'UserID': instance.userId,
      'UserOpenID': instance.userOpenId,
      'UserRegion': instance.userRegion,
      'client_para': instance.clientPara,
      'token_type': instance.tokenType,
    };
