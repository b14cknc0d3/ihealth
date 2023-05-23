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
      dataId: json['DataID'] as String,
      dataSource: json['DataSource'] as String,
      hp: json['HP'] as String,
      hr: json['HR'] as String,
      isArr: json['IsArr'] as int,
      lp: json['LP'] as int,
      lastChangeTime: json['LastChangeTime'] as int,
      lat: (json['Lat'] as num).toDouble(),
      lon: (json['Lon'] as num).toDouble(),
      mDate: json['MDate'] as int,
      note: json['Note'] as String,
      timeZone: json['TimeZone'] as String,
      measurementTime: DateTime.parse(json['measurement_time'] as String),
      timeZone2: json['time_zone'] as String,
    );

Map<String, dynamic> _$IHealthBpToJson(IHealthBp instance) => <String, dynamic>{
      'BPL': instance.bpl,
      'DataID': instance.dataId,
      'DataSource': instance.dataSource,
      'HP': instance.hp,
      'HR': instance.hr,
      'IsArr': instance.isArr,
      'LP': instance.lp,
      'LastChangeTime': instance.lastChangeTime,
      'Lat': instance.lat,
      'Lon': instance.lon,
      'MDate': instance.mDate,
      'Note': instance.note,
      'TimeZone': instance.timeZone,
      'measurement_time': instance.measurementTime.toIso8601String(),
      'time_zone': instance.timeZone2,
    };
