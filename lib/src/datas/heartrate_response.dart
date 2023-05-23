// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:ihealth/src/datas/base.dart';
part 'heartrate_response.g.dart';

@JsonSerializable()
class IHealthHeartRateResponse extends BaseResponse {
  @JsonKey(name: "HeartRateDataList")
  final List<IHeathHeartRate> heartrateDataList;
  IHealthHeartRateResponse({
    required this.heartrateDataList,
    required super.pageNumber,
    required super.pageLength,
    required super.recordCount,
    required super.nextPageUrl,
    required super.prevPageUrl,
  });

  factory IHealthHeartRateResponse.fromJson(Map<String, dynamic> json) =>
      _$IHealthHeartRateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$IHealthHeartRateResponseToJson(this);
}

///  {
///       "DataID": "c2c779fa91ea******",
///       "MDate": 1554328179,
///       "HeartRate": 80,
///       "TimeZone": 8,
///       "measurement_time": "2019-04-03 21:49:39",
///       "time_zone": "+08:00"
/// }
///
@JsonSerializable()
class IHeathHeartRate extends BaseData {
  //  final int heartRate;
  @override
  @JsonKey(
    name: "TimeZone",
    fromJson: _fromJson,
  )
  // ignore: overridden_fields
  final String timeZone;

  IHeathHeartRate({
    required this.timeZone,
    required dataId,
    required lastChangeTime,
    required mDate,
    required note,
    required dataSource,
  }) : super(
            dataId: dataId,
            lastChangeTime: lastChangeTime,
            mDate: mDate,
            note: note,
            timeZone: timeZone,
            dataSource: dataSource);

  ///this time zone is int
  static String _fromJson(x) {
    return x.toString();
  }

  factory IHeathHeartRate.fromJson(Map<String, dynamic> json) =>
      _$IHeathHeartRateFromJson(json);

  Map<String, dynamic> toJson() => _$IHeathHeartRateToJson(this);
}
