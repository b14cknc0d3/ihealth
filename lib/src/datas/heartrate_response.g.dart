// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heartrate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IHealthHeartRateResponse _$IHealthHeartRateResponseFromJson(
        Map<String, dynamic> json) =>
    IHealthHeartRateResponse(
      heartrateDataList: (json['HeartRateDataList'] as List<dynamic>)
          .map((e) => IHeathHeartRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: json['PageNumber'] as int,
      pageLength: json['PageLength'] as int,
      recordCount: json['RecordCount'] as int,
      nextPageUrl: json['NextPageUrl'] as String,
      prevPageUrl: json['PrevPageUrl'] as String,
    );

Map<String, dynamic> _$IHealthHeartRateResponseToJson(
        IHealthHeartRateResponse instance) =>
    <String, dynamic>{
      'PageNumber': instance.pageNumber,
      'PageLength': instance.pageLength,
      'RecordCount': instance.recordCount,
      'NextPageUrl': instance.nextPageUrl,
      'PrevPageUrl': instance.prevPageUrl,
      'HeartRateDataList': instance.heartrateDataList,
    };

IHeathHeartRate _$IHeathHeartRateFromJson(Map<String, dynamic> json) =>
    IHeathHeartRate(
      timeZone: IHeathHeartRate._fromJson(json['TimeZone']),
      dataId: json['DataID'],
      lastChangeTime: json['LastChangeTime'],
      mDate: json['MDate'],
      note: json['Note'],
      dataSource: json['DataSource'],
      heartRate: json['HeartRate'] as String,
    );

Map<String, dynamic> _$IHeathHeartRateToJson(IHeathHeartRate instance) =>
    <String, dynamic>{
      'DataID': instance.dataId,
      'LastChangeTime': instance.lastChangeTime,
      'MDate': instance.mDate,
      'Note': instance.note,
      'DataSource': instance.dataSource,
      'TimeZone': instance.timeZone,
      'HeartRate': instance.heartRate,
    };
