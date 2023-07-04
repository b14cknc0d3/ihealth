import 'package:dio/dio.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:ihealth/src/datas/heartrate_response.dart';
import 'package:ihealth/src/datas/models.dart';
import 'package:ihealth/src/datas/weight_response.dart';
import 'package:ihealth/src/helper/urls.dart';
import 'package:ihealth/src/service/api_service.dart';
import 'package:logger/logger.dart';

/// The [IHealthService] class provides methods for authenticating a user, retrieving blood
/// pressure, weight, and heart rate data from the iHealth API.
class IHealthService {
  static final Dio _dioHelper = DioHelper().dioInstance;

  static final IHealthService _instance = IHealthService._();
  factory IHealthService() => _instance;
  IHealthService._();
  static final Logger _logger = Logger();

  /// The [authorize] function in Dart is used to authenticate a user using a provided authentication
  /// URL and redirect scheme, and returns an [IHealthCredential] object.
  ///
  /// Args:
  ///   authUrl (IHealthAuthUrl): An object that implements the [IHealthAuthUrl] interface. It provides
  /// the necessary URLs for authentication and authorization.
  /// Returns:
  ///   The method [authorize] returns a [Future] that resolves to an [IHealthCredential] object.
  static Future<IHealthCredential> authorize(
      {required IHealthAuthUrl authUrl, required String redirectScheme}) async {
    try {
      /// Using the FlutterWebAuth2
      /// package to authenticate the user. It opens a web view with the provided authentication URL and
      /// waits for the user to complete the authentication process. Once the authentication is
      /// successful, it returns the result, which includes the authentication code.
      final result = await FlutterWebAuth2.authenticate(
          url: authUrl.authenticateUrl(), callbackUrlScheme: redirectScheme);

      /// extracting the
      /// value of the 'code' query parameter from the `result` URL.
      final String code = Uri.parse(result).queryParameters['code']!;

      ///make a POST
      /// request to the `authorizeUrl` endpoint of the `authUrl` object. It is passing the `code`
      /// parameter as part of the request. The response from the API call is stored in the `response`
      /// variable.
      final response = await _dioHelper.post(
        authUrl.authorizeUrl(code),
      );

      /// Return an instance of the
      /// `IHealthCredential` class by parsing the `response.data` JSON object.
      return IHealthCredential.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  /// The function [getBpByUserId] makes a POST request to a specified URL and returns a response
  /// containing blood pressure data.
  ///
  /// Args:
  ///   [iHealthBpUrl] (IHealthDataUrl): An object that contains the URL for fetching blood pressure data
  /// from the iHealth API.
  ///   pageIndex (int): The `pageIndex` parameter is an integer that represents the page index of the
  /// data you want to retrieve. It is used to paginate through the data, allowing you to retrieve a
  /// specific page of results.
  ///
  /// Returns:
  ///   a Future object of type [IHealthBpResponse].

  static Future<IHealthBpResponse> getBpByUserId(
      {required IHealthDataUrl iHealthBpUrl, required int pageIndex}) async {
    try {
      final response = await _dioHelper.post(
        iHealthBpUrl.getBpUrl,
      );
      return IHealthBpResponse.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  /// The function [getWeightByUserId] retrieves weight data for a user based on their ID using a POST
  /// request.
  ///
  /// Args:
  ///   [iHealthWeightUrl] (IHealthDataUrl): An object that contains the URL for retrieving weight data from
  /// the iHealth API.
  ///   pageIndex (int): The `pageIndex` parameter is an integer that represents the page index of the
  /// weight data you want to retrieve. It is used to paginate through the weight data if there are
  /// multiple pages of results.
  ///
  /// Returns:
  ///   an object of type [IHealthWeightResponse].

  static Future<IHealthWeightResponse> getWeightByUserId(
      {required IHealthDataUrl iHealthWeightUrl,
      required int pageIndex}) async {
    try {
      final response = await _dioHelper.post(
        iHealthWeightUrl.getWeightUrl,
      );
      _logger.i(response.data);
      return IHealthWeightResponse.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  /// The function [getHeartRateByUserId] makes a POST request to a specified URL and returns a response
  /// containing `heart rate data`.
  ///
  /// Args:
  ///   [iHealthHRtUrl] (IHealthDataUrl): An object that contains the URL for fetching heart rate data from
  /// the iHealth API.
  ///   pageIndex (int): The `pageIndex` parameter is an integer value that represents the page index for
  /// retrieving heart rate data. It is used to paginate through the heart rate data if there are multiple
  /// pages of results.
  ///
  /// Returns:
  ///   a Future object of type [IHealthHeartRateResponse].
  static Future<IHealthHeartRateResponse> getHeartRateByUserId(
      {required IHealthDataUrl iHealthHRtUrl, required int pageIndex}) async {
    try {
      final response = await _dioHelper.post(
        iHealthHRtUrl.getHeartRateUrl,
      );
      _logger.i(response.data);
      return IHealthHeartRateResponse.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
