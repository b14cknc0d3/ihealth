// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

///"CurrentRecordCount":1,
///"NextPageUrl":"",
///"PageLength":50,
///"PageNumber":1,
///"PrevPageUrl":"",
///"RecordCount":1}

abstract class BaseResponse {
  @JsonKey(name: "PageNumber")
  final int pageNumber;
  @JsonKey(name: "PageLength")
  final int pageLength;
  @JsonKey(name: "RecordCount")
  final int recordCount;
  @JsonKey(name: "NextPageUrl")
  final String nextPageUrl;
  @JsonKey(name: "PrevPageUrl")
  final String prevPageUrl;
  BaseResponse({
    required this.pageNumber,
    required this.pageLength,
    required this.recordCount,
    required this.nextPageUrl,
    required this.prevPageUrl,
  });
}

///basedata for iheath datas
abstract class BaseData {
  @JsonKey(name: 'DataID')
  final String dataId;
  @JsonKey(name: 'LastChangeTime')
  final int lastChangeTime;
  @JsonKey(name: 'MDate')
  final int mDate;
  @JsonKey(name: 'Note')
  final String note;
  @JsonKey(name: 'TimeZone')
  final String timeZone;
  @JsonKey(name: 'DataSource')
  final String dataSource;
  BaseData({
    required this.dataId,
    required this.lastChangeTime,
    required this.mDate,
    required this.note,
    required this.timeZone,
    required this.dataSource,
  });
}
