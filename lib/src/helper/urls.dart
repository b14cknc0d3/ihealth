// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ihealth/src/datas/models.dart';
import 'package:ihealth/src/helper/constant.dart';

abstract class IHeathApiUrl {
  final String clientId;
  final String clientSecret;
  final String redirectUrl;
  IHealthCredential? credencial;
  IHeathApiUrl({
    this.credencial,
    required this.redirectUrl,
    required this.clientId,
    required this.clientSecret,
  });
}

/// authenticate Uri
// "https://api.ihealthlabs.com:8443/OpenApiV2/OAuthv2/userauthorization/?
// response_type=code&
// APIName=OpenApiSleep%C2%A0OpenApiBP%C2%A0OpenApiWeight%C2%A0OpenApiBG%C2%A0OpenApiSpO2%C2%A0OpenApiActivity%C2%A0OpenApiUserInfo%C2%A0OpenApiFood%C2%A0OpenApiSport%C2%A0OpenApiT%C2%A0OpenApiHR
// &client_id
// &redirect_uri=
// &IsNew=False"

class IHealthAuthUrl extends IHeathApiUrl {
  static const apiName =
      "OpenApiSleep%C2%A0OpenApiBP%C2%A0OpenApiWeight%C2%A0OpenApiBG%C2%A0OpenApiSpO2%C2%A0OpenApiActivity%C2%A0OpenApiUserInfo%C2%A0OpenApiFood%C2%A0OpenApiSport%C2%A0OpenApiT%C2%A0OpenApiHR";

  bool? isNew;

  IHealthAuthUrl({
    this.isNew,
    required String clientSecret,
    required String clientId,
    required String redirectUri,
    required IHealthCredential? credencial,
  }) : super(
            credencial: credencial,
            clientSecret: clientSecret,
            clientId: clientId,
            redirectUrl: redirectUri);

  String authenticateUrl() {
    return "${AppConstant.BASE_URL}/OAuthv2/userauthorization/?response_type=code&APIName=$apiName&client_id=$clientId&client_secret=$clientSecret&redirect_uri=$redirectUrl&IsNew=False";
  }

//  https://api.ihealthlabs.com:8443/OpenApiV2/OAuthv2/userauthorization/?
// client_id=
// &client_secret=
// &response_type=refresh_token
// &redirect_uri=
// &refresh_token=
//TODO:
  String refreshTokenUrl() {
    return "";
  }

  ///https://api.ihealthlabs.com:8443/OpenApiV2/OAuthv2/userauthorization/?
  ///client_id=
  ///&client_secret=
  ///&grant_type=authorization_code
  ///&redirect_uri=
  ///&code=
  String authorizeUrl(String code) {
    return "${AppConstant.BASE_URL}/OAuthv2/userauthorization/?client_id=$clientId&client_secret=$clientSecret&grant_type=authorization_code&redirect_uri=$redirectUrl&code=$code";
  }
}

/// https://api.ihealthlabs.com:8443/openapiv2/user/6f0e95409e***/bp.json/
/// ?client_id=**&client_secret=**
/// &redirect_uri=https://www.witzuhealth.com
/// &access_token=****
/// &page_index=2
/// &sc=**
/// &sv=**
///

///Data url for getting bp,hr,etc..
class IHealthDataUrl extends IHeathApiUrl {
  /// sc for bp
  final String sc;

  /// sv for bp
  final String sv;

  ///pageIndex
  final int pageIndex;

  IHealthDataUrl(
      {required this.sc,
      required this.sv,
      this.pageIndex = 1,
      required super.credencial,
      required super.redirectUrl,
      required super.clientId,
      required super.clientSecret})
      : assert(credencial != null, "credencial cannot be null");

  ///get bp url
  String get getBpUrl {
    String userId = credencial!.userId;
    String accessToken = credencial!.accessToken;

    return "${AppConstant.BASE_URL}/user/$userId/bp.json/?client_id=$clientId&client_secret=$clientSecret&redirect_uri=$redirectUrl&access_token=$accessToken&sc=$sc&sv=$sv&page_index=$pageIndex";
  }

  ///get heartrate url
  String get getHeartRateUrl {
    String userId = credencial!.userId;
    String accessToken = credencial!.accessToken;

    return "${AppConstant.BASE_URL}/user/$userId/heartrate.json/?client_id=$clientId&client_secret=$clientSecret&redirect_uri=$redirectUrl&access_token=$accessToken&sc=$sc&sv=$sv&page_index=$pageIndex";
  }

  ///get  weight url
  String get getWeightUrl {
    String userId = credencial!.userId;
    String accessToken = credencial!.accessToken;

    return "${AppConstant.BASE_URL}/user/$userId/weight.json/?client_id=$clientId&client_secret=$clientSecret&redirect_uri=$redirectUrl&access_token=$accessToken&sc=$sc&sv=$sv&page_index=$pageIndex";
  }

  IHealthDataUrl copyWith({
    String? sc,
    String? sv,
    int? pageIndex,
    IHealthCredential? credencial,
    String? redirectUrl,
    String? clientSecret,
    String? clientId,
  }) {
    return IHealthDataUrl(
      sc: sc ?? this.sc,
      sv: sv ?? this.sv,
      pageIndex: pageIndex ?? this.pageIndex,
      clientId: clientId ?? this.clientId,
      clientSecret: clientSecret ?? this.clientSecret,
      credencial: credencial ?? this.credencial,
      redirectUrl: redirectUrl ?? this.redirectUrl,
    );
  }
}

///url for ihealth heartrate
