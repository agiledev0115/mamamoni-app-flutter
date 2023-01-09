import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../utils/constants.dart';
import 'api_exception.dart';

const sandBoxUrl = 'https://api.okra.ng/v2/sandbox/';
const prodUrl = 'https://api.okra.ng/v2/';

///[APIUtils] class to provide utility for HTTP methods like get, post, patch, etc.
class APIUtils {
  ///Base API URL for development environment
  // ignore: constant_identifier_names
  static const BASE_URL = isTesting ? sandBoxUrl : prodUrl;

  ///[getRequest] method to use get API call to server.
  ///param : [apiUrl] -> API URL
  ///param : [headers] -> API headers for the [apiUrl]
  static Future<Map<String, dynamic>> getRequest(String apiUrl) async {
    try {
      //Remote Call to API with url and headers
      http.Response apiResponse = await http.get(_apiPath(apiUrl));

      //Checking for the response code and handling the result.
      return _returnResponse(apiResponse);
    }

    //Handling the condition when socket exception received.
    on SocketException {
      throw FetchDataException('Failure occured');
    }
  }

  ///[postRequest] function for GET requests with auth token as header
  ///and request type as form data.
  ///param : [apiUrl] -> API URL
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

  static Future<Map<String, dynamic>> getRequestWithHeaders(
      String apiUrl) async {
    try {
      //Remote Call to API with url and headers
      http.Response apiResponse =
          await http.get(_apiPath(apiUrl), headers: await _headers());

      //Checking for the response code and handling the result.
      return _returnResponse(apiResponse);
    }

    //Handling the condition when socket exception received.
    on SocketException {
      throw FetchDataException('Failure occured');
    }
  }

  static Uri _apiPath(String url) {
    //Parsing the apiURl to Uri
    Uri uri = Uri.parse(BASE_URL + url);
    log('API URL :: $uri');
    return uri;
  }

  static Future<Map<String, String>> _headers() async {
    //Getting auth token
    String authToken = await getToken();
    debugPrint("TOKEN: $authToken");
    //Creating http headers for api
    Map<String, String> headers = {
      'Authorization': authToken,
      'Content-Type': 'application/json',
      "Accept": "application/json; charset=utf-8"
    };
    return headers;
  }

  ///Function to handle the response as per status code from api server
  static dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body);
        // Helper.printJSONData(responseJson);
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

  ///Function for building the auth token to be used in api headers
  ///using API Key and API Secret.
  static Future<String> getToken() async {
    //Creating object for DBPreferences
    // DBPreferences dbPreferences = DBPreferences();

    // //Getting API Key
    // String apiKey = await dbPreferences.getPreference(ApiKey);

    // //Getting API Secret
    // String apiSecret = await dbPreferences.getPreference(ApiSecret);
    String apiSecret =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MGQ1YTlkNjExMzJjZjE3NmNjOTVjOWUiLCJpYXQiOjE2NTM0OTMwMTd9.vhrkAhM68TUYQtJhwLhMMyazK3t4F0uJ0lWxid4H0YA";

    //Returning the final auth token as result
    return "Bearer $apiSecret";
  }

  static printJSONData(var data) {
    final prettyString = const JsonEncoder.withIndent(' ').convert(data);
    log(prettyString);
  }
}
