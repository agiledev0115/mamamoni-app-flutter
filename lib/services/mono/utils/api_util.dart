import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../utils/constants.dart';
import 'api_exception.dart';

class ApiUtil {
  static Future<Map<String, dynamic>> getRequest(String url,
      {bool enableHeader = false, Map<String, dynamic>? queryParam}) async {
    try {
      http.Response apiResponse;
      if (queryParam != null) {
        //Remote Call to API with url and headers
        Uri uri = Uri.parse(url);
        final finalUri = uri.replace(queryParameters: queryParam);
        apiResponse = await http.get(finalUri,
            headers: enableHeader ? await _headers() : {});
      } else {
        //Remote Call to API with url and headers
        apiResponse = await http.get(_apiPath(url),
            headers: enableHeader ? await _headers() : {});
      }

      //Checking for the response code and handling the result.
      return _returnResponse(apiResponse);
    }

    //Handling the condition when socket exception received.
    on SocketException {
      throw FetchDataException('Failure occured');
    }
  }

  static Future<Map<String, dynamic>> postRequest(
      String apiUrl, dynamic requestBody,
      {bool enableHeader = true}) async {
    try {
      printJSONData(requestBody);

      //Getting response from api call
      http.Response apiResponse = await http.post(_apiPath(apiUrl),
          body: jsonEncode(requestBody),
          headers: enableHeader ? await _headers() : {});

      //Checking for the response code and handling the result.
      return _returnResponse(apiResponse);
    }

    //Handling the condition when socket exception received.
    on SocketException {
      throw FetchDataException('Failure occured');
    }
  }

  ///Function to handle the response as per status code from api server
  static dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnAuthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            "Error occured while Communication with Server with StatusCode : ${response.statusCode}");
    }
  }

  static Uri _apiPath(String url) {
    return Uri.parse(url);
  }

  static printJSONData(var data) {
    final prettyString = const JsonEncoder.withIndent(' ').convert(data);
    log(prettyString);
  }

  static Future<Map<String, String>> _headers() async {
    //Getting auth token
    String authToken = monoSecretKey;
    log("TOKEN: $authToken");
    //Creating http headers for api
    Map<String, String> headers = {
      'mono-sec-key': authToken,
      'Content-Type': 'application/json'
    };
    printJSONData(headers);

    return headers;
  }
}
