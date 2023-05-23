// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IHealthBpResponse _$IHealthBpResponseFromJson(Map<String, dynamic> json) =>
    IHealthBpResponse(
      bpUnit: json['BPUnit'] as int,
      bpDataList: (json['BPDataList'] as List<dynamic>)
          .map((e) => IHealthBp.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: json['PageNumber'] as int,
      pageLength: json['PageLength'] as int,
      recordCount: json['RecordCount'] as int,
      nextPageUrl: json['NextPageUrl'] as String,
      prevPageUrl: json['PrevPageUrl'] as String,
    );

Map<String, dynamic> _$IHealthBpResponseToJson(IHealthBpResponse instance) =>
    <String, dynamic>{
      'PageNumber': instance.pageNumber,
      'PageLength': instance.pageLength,
      'RecordCount': instance.recordCount,
      'NextPageUrl': instance.nextPageUrl,
      'PrevPageUrl': instance.prevPageUrl,
      'BPUnit': instance.bpUnit,
      'BPDataList': instance.bpDataList,
    };

IHealthBp _$IHealthBpFromJson(Map<String, dynamic> json) => IHealthBp(
      bpl: json['BPL'] as int,
      hp: json['HP'] as int,
      hr: json['HR'] as int,
      isArr: json['IsArr'] as int,
      lp: json['LP'] as int,
      lat: (json['Lat'] as num).toDouble(),
      lon: (json['Lon'] as num).toDouble(),
      measurementTime: DateTime.parse(json['measurement_time'] as String),
      timeZone2: json['time_zone'] as String,
      dataId: json['DataID'] as String,
      lastChangeTime: json['LastChangeTime'] as int,
      mDate: json['MDate'] as int,
      note: json['Note'] as String,
      timeZone: json['TimeZone'] as String,
      dataSource: json['DataSource'] as String,
    );

Map<String, dynamic> _$IHealthBpToJson(IHealthBp instance) => <String, dynamic>{
      'DataID': instance.dataId,
      'LastChangeTime': instance.lastChangeTime,
      'MDate': instance.mDate,
      'Note': instance.note,
      'TimeZone': instance.timeZone,
      'DataSource': instance.dataSource,
      'BPL': instance.bpl,
      'HP': instance.hp,
      'HR': instance.hr,
      'IsArr': instance.isArr,
      'LP': instance.lp,
      'Lat': instance.lat,
      'Lon': instance.lon,
      'measurement_time': instance.measurementTime.toIso8601String(),
      'time_zone': instance.timeZone2,
    };
