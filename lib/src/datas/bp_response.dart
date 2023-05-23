// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:ihealth/src/datas/base.dart';

part 'bp_response.g.dart';

// {
//"BPDataList":
//[

//],"BPUnit":0,
//"CurrentRecordCount":1,
//"NextPageUrl":"",
//"PageLength":50,
//"PageNumber":1,
//"PrevPageUrl":"",
//"RecordCount":1}
@JsonSerializable()
class IHealthBpResponse extends BaseResponse {
  @JsonKey(name: "BPUnit")
  final int bpUnit;
  @JsonKey(name: "BPDataList")
  final List<IHealthBp> bpDataList;
  IHealthBpResponse(
      {required this.bpUnit,
      required this.bpDataList,
      required super.pageNumber,
      required super.pageLength,
      required super.recordCount,
      required super.nextPageUrl,
      required super.prevPageUrl});

  factory IHealthBpResponse.fromJson(Map<String, dynamic> json) =>
      _$IHealthBpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$IHealthBpResponseToJson(this);
}

///
///"BPL":5,
///"DataID":"1e006f66772c37166d2bfafbc857088d",
///"DataSource":"Manual",
///"HP":120,
///"HR":80,
///"IsArr":0,
///"LP":80,
///"LastChangeTime":1684814616,
///"Lat":0,"Lon":0,
///"MDate":1684843347,
///"Note":"Asdf\n",
///"TimeZone":"+0800",
///"measurement_time":"2023-05-23 12:02:27",
///"time_zone":"+08:00"}

@JsonSerializable()
class IHealthBp extends BaseData {
  @JsonKey(name: 'BPL')
  final int bpl;

  @JsonKey(name: 'HP')
  final int hp;
  @JsonKey(name: 'HR')
  final int hr;

  /// -1 it is null in the database
  /// 1 heart rate is normal
  /// 2 arrhythmia cordis
  /// 3 unknown
  @JsonKey(name: 'IsArr')
  final int isArr;
  @JsonKey(name: 'LP')
  final int lp;

  @JsonKey(name: 'Lat')
  final double lat;
  @JsonKey(name: 'Lon')
  final double lon;

  @JsonKey(name: 'measurement_time')
  final DateTime measurementTime;
  @JsonKey(name: 'time_zone')
  final String timeZone2;
  IHealthBp({
    required this.bpl,
    required this.hp,
    required this.hr,
    required this.isArr,
    required this.lp,
    required this.lat,
    required this.lon,
    required this.measurementTime,
    required this.timeZone2,
    required super.dataId,
    required super.lastChangeTime,
    required super.mDate,
    required super.note,
    required super.timeZone,
    required super.dataSource,
  });

  factory IHealthBp.fromJson(Map<String, dynamic> json) =>
      _$IHealthBpFromJson(json);
  Map<String, dynamic> toJson() => _$IHealthBpToJson(this);
}
