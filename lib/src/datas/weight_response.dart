import 'package:ihealth/src/datas/base.dart';
import 'package:json_annotation/json_annotation.dart';
part 'weight_response.g.dart';

@JsonSerializable()
class IHealthWeightResponse extends BaseResponse {
  @JsonKey(name: "WeightUnit")
  final int weightUnit;
  @JsonKey(name: "WeightDataList")
  final List<IHealthWeight> weightDataList;
  IHealthWeightResponse(
      {required this.weightDataList,
      required this.weightUnit,
      required super.pageNumber,
      required super.pageLength,
      required super.recordCount,
      required super.nextPageUrl,
      required super.prevPageUrl});

  factory IHealthWeightResponse.fromJson(Map<String, dynamic> json) =>
      _$IHealthWeightResponseFromJson(json);

  Map<String, dynamic> toJson() => _$IHealthWeightResponseToJson(this);
}

/** 
  {
            "BMI": 16.538315869208432, 
            "BoneValue": 2, 
            "DCI": 2, 
            "DataID": "24abfb4d2a344f3aad571*****", 
            "FatValue": 0.02, 
            "MDate": 1347460380, 
            "MuscaleValue": 2, 
            "Note": "test900000000000000000", 
            "WaterValue": 0.02, 
            "WeightValue": 52.4,
            "LastChangeTime": 1373362486, 
            "DataSource": "FromDevice",
            "TimeZone": "+0800",
            "VFR": "30"
        }
**/
///

@JsonSerializable()
class IHealthWeight extends BaseData {
  @JsonKey(name: "BMI")
  final double bmi;
  @JsonKey(name: "BoneValue")
  final double boneValue;
  @JsonKey(name: "DCI")
  final double dci;
  @JsonKey(name: "FatValue")
  final double fatValue;
  @JsonKey(name: "MuscaleValue")
  final double muscaleValue;
  @JsonKey(name: "WaterValue")
  final double waterValue;
  @JsonKey(name: "WeightValue")
  final double weightValue;
  @JsonKey(name: "VFR", fromJson: fromJsonVfr)
  final double vfr;

  IHealthWeight(
      {required this.fatValue,
      required this.muscaleValue,
      required this.waterValue,
      required this.weightValue,
      required this.vfr,
      required this.bmi,
      required this.boneValue,
      required this.dci,
      required super.dataId,
      required super.lastChangeTime,
      required super.mDate,
      required super.note,
      required super.timeZone,
      required super.dataSource});
  factory IHealthWeight.fromJson(Map<String, dynamic> json) =>
      _$IHealthWeightFromJson(json);
  Map<String, dynamic> toJson() => _$IHealthWeightToJson(this);

  ///static fromJson for (vfr) string in doc int in return
  static fromJsonVfr(dynamic d) {
    if (d is String) {
      return double.tryParse(d) ?? 0;
    }
    if ((d is! int) || (d is! String)) {
      return 0.0;
    }
    return d;
  }
}
