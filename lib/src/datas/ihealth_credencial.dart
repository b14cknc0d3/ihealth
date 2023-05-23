// ignore_for_file: public_member_api_docs, sort_constructors_first
// {
//     "APIName": "OpenApiWeight OpenApiUserInfo OpenApiT OpenApiSport OpenApiSpO2 OpenApiSleep OpenApiHR OpenApiFood OpenApiBP OpenApiBG OpenApiActivity",
//     "AccessToken": "hSWE3uPDVope5L7d1IMRepbsS2hze3PiEVb5tkM4Q3A3mnCLXhY89A9FxfF1*OEPWsoYPpVPxZpncKOhDXwow53Re0RMdcrge5L1OaIDELgK*t8tk8IvNz-5D*fGnaylKjWPVN*zgYcfzEjNw2TbXgubycLoCgOadMoVnWj7Q963uSpHopGowyXZKKuJ2nuGgi-D10hbI1bNgXX0fiPwfA",
//     "Expires": 3672000,
//     "RefreshToken": "hSWE3uPDVope5L7d1IMRepbsS2hze3PiEVb5tkM4Q3A3mnCLXhY89A9FxfF1*OEPWsoYPpVPxZpncKOhDXwow0Eb92NfYuDGK6JCqStbesnmTqGCandfRtkNoqdXDAIwHZWzTqnXgd9IEMjPJ1-RRYLoEks70UzQXBUgJyMLed7Wy93Y-QpRSBqnAxTNj5Xob*UHpY3NLgXTsHvI2CLteg",
//     "RefreshTokenExpires": 31536000,
//     "UUID": "",
//     "UserID": "6f0e95409e09449e91fdf2489c763255",
//     "UserOpenID": "6f0e95409e09449e91fdf2489c763255",
//     "UserRegion": "https://api.ihealthlabs.com:8443",
//     "client_para": "",
//     "token_type": "bearer"
// }

///[iHealth] credencial after authorize
///
import 'package:json_annotation/json_annotation.dart';
part 'ihealth_credencial.g.dart';

@JsonSerializable()
class IHealthCredencial {
  @JsonKey(name: 'APIName')
  final String apiName;
  @JsonKey(name: 'AccessToken')
  final String accessToken;
  @JsonKey(name: "Expires")
  final int expires;
  @JsonKey(name: "RefreshToken")
  final String refreshToken;
  @JsonKey(name: "RefreshTokenExpires")
  final int refreshTokenExpires;
  @JsonKey(
    name: "UUID",
  )
  final String uuid;
  @JsonKey(name: "UserID")
  final String userId;
  @JsonKey(name: "UserOpenID")
  final String userOpenId;
  @JsonKey(name: "UserRegion")
  final String userRegion;
  @JsonKey(name: "client_para")
  final String clientPara;
  @JsonKey(name: "token_type")
  final String tokenType;
  IHealthCredencial({
    required this.apiName,
    required this.accessToken,
    required this.expires,
    required this.refreshToken,
    required this.refreshTokenExpires,
    required this.uuid,
    required this.userId,
    required this.userOpenId,
    required this.userRegion,
    required this.clientPara,
    required this.tokenType,
  });

  factory IHealthCredencial.fromJson(Map<String, dynamic> json) =>
      _$IHealthCredencialFromJson(json);

  Map<String, dynamic> toJson() => _$IHealthCredencialToJson(this);
}
