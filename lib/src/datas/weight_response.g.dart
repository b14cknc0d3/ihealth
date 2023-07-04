// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IHealthWeightResponse _$IHealthWeightResponseFromJson(
        Map<String, dynamic> json) =>
    IHealthWeightResponse(
      weightDataList: (json['WeightDataList'] as List<dynamic>)
          .map((e) => IHealthWeight.fromJson(e as Map<String, dynamic>))
          .toList(),
      weightUnit: json['WeightUnit'] as int,
      pageNumber: json['PageNumber'] as int,
      pageLength: json['PageLength'] as int,
      recordCount: json['RecordCount'] as int,
      nextPageUrl: json['NextPageUrl'] as String,
      prevPageUrl: json['PrevPageUrl'] as String,
    );

Map<String, dynamic> _$IHealthWeightResponseToJson(
        IHealthWeightResponse instance) =>
    <String, dynamic>{
      'PageNumber': instance.pageNumber,
      'PageLength': instance.pageLength,
      'RecordCount': instance.recordCount,
      'NextPageUrl': instance.nextPageUrl,
      'PrevPageUrl': instance.prevPageUrl,
      'WeightUnit': instance.weightUnit,
      'WeightDataList': instance.weightDataList,
    };

IHealthWeight _$IHealthWeightFromJson(Map<String, dynamic> json) =>
    IHealthWeight(
      fatValue: (json['FatValue'] as num).toDouble(),
      muscaleValue: (json['MuscaleValue'] as num).toDouble(),
      waterValue: (json['WaterValue'] as num).toDouble(),
      weightValue: (json['WeightValue'] as num).toDouble(),
      vfr: IHealthWeight.fromJsonVfr(json['VFR']),
      bmi: (json['BMI'] as num).toDouble(),
      boneValue: (json['BoneValue'] as num).toDouble(),
      dci: (json['DCI'] as num).toDouble(),
      dataId: json['DataID'] as String,
      lastChangeTime: json['LastChangeTime'] as int,
      mDate: json['MDate'] as int,
      note: json['Note'] as String,
      timeZone: json['TimeZone'] as String,
      dataSource: json['DataSource'] as String,
    );

Map<String, dynamic> _$IHealthWeightToJson(IHealthWeight instance) =>
    <String, dynamic>{
      'DataID': instance.dataId,
      'LastChangeTime': instance.lastChangeTime,
      'MDate': instance.mDate,
      'Note': instance.note,
      'TimeZone': instance.timeZone,
      'DataSource': instance.dataSource,
      'BMI': instance.bmi,
      'BoneValue': instance.boneValue,
      'DCI': instance.dci,
      'FatValue': instance.fatValue,
      'MuscaleValue': instance.muscaleValue,
      'WaterValue': instance.waterValue,
      'WeightValue': instance.weightValue,
      'VFR': instance.vfr,
    };
