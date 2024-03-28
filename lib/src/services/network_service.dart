import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';


import '../utils/global.dart';
import 'api_service.dart';
import 'base_service.dart';


class NetworkApiService extends BaseApiServices {

  static final NetworkApiService singleton = NetworkApiService._internal();

  factory NetworkApiService() {
    return singleton;
  }

  NetworkApiService._internal();
  @override
   Future getApiResponse(String url) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? token = sp.getString('token');
    dynamic responseJson;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: ApiServices.header,
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on TimeoutException {
      
      throw 'Please check your internet connection and try again.';
    } on SocketException {
      throw Exception('No Internet Connection');
    }

    return responseJson;
  }

  @override
  Future postApiResponse(String url, dynamic data,
  ) async {
    dynamic responseJson;
    try {
      http.Response response = await http.post(
        Uri.parse(url),
        body: jsonEncode(data),
       

        headers: ApiServices.header,
      ).timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on TimeoutException {
      AppConstant.messageDialog("Please check your internet connection!");
      throw 'Please check your internet connection and try again.';
    } on SocketException {
      AppConstant.messageDialog("No Internet work");

      throw Exception('No Internet Connection');
    }

    return responseJson;
  }

   @override
  Future patchApiResponse(String url, data) async {
    dynamic responseJson;
    try {
      http.Response response = await http.patch(
        Uri.parse(url),
        body: jsonEncode(data),
        headers: ApiServices.header,
      ).timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on TimeoutException {
      AppConstant.messageDialog("Please check your internet connection!");
      throw 'Please check your internet connection and try again.';
    } on SocketException {
      AppConstant.messageDialog("No Internet work");

      throw Exception('No Internet Connection');
    }

    return responseJson;
  }

  static dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        AppConstant.messageDialog("Something went wrong");
        return null;
      case 403:
        AppConstant.messageDialog(jsonDecode(response.body)['message']);
        return null;  
      case 404:
        AppConstant.messageDialog(jsonDecode(response.body)['message']);  
        return null;
      case 409:
        AppConstant.messageDialog(jsonDecode(response.body)['message']);
        return null;
      case 401:
        AppConstant.messageDialog(jsonDecode(response.body)['message']);
        return null;
      case 500:
        AppConstant.messageDialog("Something went wrong");
        return null;
      default:
        throw Exception(
            'Error accured while communicating with server with status code ${response.statusCode}');
    }
  }
  
 
}