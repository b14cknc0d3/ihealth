// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      pageNumber: json['PageNumber'] as int,
      pageLength: json['PageLength'] as int,
      recordCount: json['RecordCount'] as int,
      nextPageUrl: json['NextPageUrl'] as String,
      prevPageUrl: json['PrevPageUrl'] as String,
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'PageNumber': instance.pageNumber,
      'PageLength': instance.pageLength,
      'RecordCount': instance.recordCount,
      'NextPageUrl': instance.nextPageUrl,
      'PrevPageUrl': instance.prevPageUrl,
    };
