// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'base_response.g.dart';

///"CurrentRecordCount":1,
///"NextPageUrl":"",
///"PageLength":50,
///"PageNumber":1,
///"PrevPageUrl":"",
///"RecordCount":1}
@JsonSerializable()
class BaseResponse {
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

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
