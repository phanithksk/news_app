import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiBaseHelper extends GetConnect {
  final String baseurl = 'http://127.0.0.1:8000/api/';
  Future<dynamic> onNetworkRequesting({
    required String url,
    String? testUrl,
    Map<String, String>? header,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
    required METHODE? methode,
  }) async {
    final fullUrl = testUrl ?? baseurl + url;
    Map<String, String> defaultHeader = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      "Accept-Language": Get.locale == const Locale('km', 'KM') ? 'km' : 'en',
    };
    try {
      switch (methode) {
        case METHODE.get:
          final response = await get(fullUrl,
              query: query, headers: header ?? defaultHeader);
          return _returnResponse(response);

        case METHODE.post:
          if (body != null) {
            final response =
                await post(fullUrl, json.encode(body), headers: defaultHeader);
            return _returnResponse(response);
          }
          return Future.error(
            const ErrorModel(bodyString: 'Body must be included'),
          );

        case METHODE.delete:
          final response = await delete(fullUrl, headers: defaultHeader);
          return _returnResponse(response);

        case METHODE.update:
          if (body != null) {
            final response =
                await put(fullUrl, json.encode(body), headers: defaultHeader);
            return _returnResponse(response);
          }
          return Future.error(
            const ErrorModel(bodyString: 'Body must be included'),
          );

        default:
          break;
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  dynamic _returnResponse(Response response) {
    if (response.bodyString == null || response.bodyString!.isEmpty) {
      return Future.error(
        ErrorModel(
          statusCode: response.statusCode,
          bodyString: 'Empty response body',
        ),
      );
    }

    try {
      var responseJson = json.decode(response.bodyString ?? "");
      switch (response.statusCode) {
        case 200:
        case 201:
        case 202:
          return responseJson;
        case 400:
        case 401:
        case 403:
        case 404:
        case 500:
          return Future.error(
            ErrorModel(
              statusCode: response.statusCode,
              bodyString: responseJson,
            ),
          );
        default:
          return Future.error(
            ErrorModel(
              statusCode: response.statusCode,
              bodyString: responseJson,
            ),
          );
      }
    } catch (e) {
      return Future.error(
        ErrorModel(
          statusCode: response.statusCode,
          bodyString: response.bodyString!,
        ),
      );
    }
  }
}

class ErrorModel {
  final int? statusCode;
  final dynamic bodyString;
  const ErrorModel({this.statusCode, this.bodyString});
}

enum METHODE {
  get,
  post,
  delete,
  update,
}
