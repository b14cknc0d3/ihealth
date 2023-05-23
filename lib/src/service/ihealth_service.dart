import 'package:dio/dio.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:ihealth/src/datas/models.dart';
import 'package:ihealth/src/helper/urls.dart';
import 'package:ihealth/src/service/api_service.dart';

///class to connect with iHealth
class IHealthService {
  static final Dio _dioHelper = DioHelper().dioInstance;

  static final IHealthService _instance = IHealthService._();
  factory IHealthService() => _instance;
  IHealthService._();
  // static final Logger _logger = Logger();

  ///Gets the access and refresh tokens from IHeath APIs using OAuth 2.0 protocol .
  static Future<IHealthCredencial> authorize(
      {required IHealthAuthUrl authUrl, required String redirectScheme}) async {
    try {
      ///get auth url

      ///do flutter web auth
      final result = await FlutterWebAuth2.authenticate(
          url: authUrl.authenticateUrl(), callbackUrlScheme: redirectScheme);

      ///get auth code
      final String code = Uri.parse(result).queryParameters['code']!;

      ///get credencial
      final response = await _dioHelper.post(
        authUrl.authorizeUrl(code),
      );

      //return ihealthcredencial
      return IHealthCredencial.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  ///get bp by user id
  static Future<IHealthBpResponse> getBpByUserId(
      {required IHealthBpUrl iHealthBpUrl, required int pageIndex}) async {
    try {
      final response = await _dioHelper.post(
        iHealthBpUrl.getBpUrl(),
      );
      return IHealthBpResponse.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
