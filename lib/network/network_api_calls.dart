import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:demoapp/network/models.dart';
import 'package:demoapp/strings.dart';
import 'package:demoapp/toasts.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class MyApi {

  static Future<dynamic> callPostApi(
      {String? url,
        dynamic body,
        Map<String, dynamic>? parameters,
        Map<String, dynamic>? myHeaders,
        dynamic modelName}) async {
    try {
      var dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.none) {
        Response _response = await dio.post(url!,
            options: Options(headers: myHeaders),
            data: body,
            queryParameters: parameters);

        switch (_response.statusCode) {
          case 200:
            dynamic modelobj =
            await Models.getModelObject(modelName, _response.data);
            if (modelobj.code == 1) {
              return modelobj;
            } else {
              Toasts.getErrorToast(text: modelobj.message);
            }
            return null;

          default:
            Toasts.getErrorToast(text: Strings.badHappenedError);

            return null;
        }
      } else {
        Toasts.getErrorToast(text: Strings.noInternetError);
        return null;
      }
    }  on Exception {
      Toasts.getErrorToast(text: Strings.badHappenedError);
      return null;
    }
  }

  static Future<dynamic> callGetApi(
      {String? url,
        Map<String, dynamic>? parameters,
        Map<String, dynamic>? myHeaders,
        dynamic modelName}) async {
    try {
      var dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.none) {
        Response _response = await dio.get(url!,
            options: Options(headers: myHeaders), queryParameters: parameters);
        switch (_response.statusCode) {
          case 200:
            dynamic getModelObj =
            await Models.getModelObject(modelName, _response.data);
            if (getModelObj!=null) {
              return getModelObj;
            } else {
              Toasts.getErrorToast(text: getModelObj.message);
            }
            return null;

          default:
            Toasts.getErrorToast(text: Strings.badHappenedError);
            return null;
        }
      } else {
        Toasts.getErrorToast(text: "No internet");
        return null;
      }
    }  on Exception {
      Toasts.getErrorToast(text: Strings.badHappenedError);
      return;
    }
  }

  static Future<dynamic> callPutApi(
      {String? url,
        dynamic body,
        Map<String, dynamic>? parameters,
        Map<String, dynamic>? myHeaders,
        dynamic modelName}) async {
    try {
      var dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.none) {
        Response _response = await dio.put(url!,
            options: Options(headers: myHeaders),
            data: body,
            queryParameters: parameters);
        switch (_response.statusCode) {
          case 200:
            dynamic modelobj =
            await Models.getModelObject(modelName, _response.data);
            if (modelobj.code == 1) {
              return modelobj;
            } else {
              Toasts.getErrorToast(text: modelobj.message);
            }
            return null;

          default:
            Toasts.getErrorToast(text: Strings.badHappenedError);
            return null;
        }
      } else {
        Toasts.getErrorToast(text: Strings.noInternetError);
        return null;
      }
    } on Exception {
      Toasts.getErrorToast(text: Strings.badHappenedError);
      return null;
    }
  }

  //   Delete
  static Future<dynamic> callDeleteApi(
      {String? url,
        dynamic body,
        Map<String, dynamic>? parameters,
        Map<String, dynamic>? myHeaders,
        dynamic modelName}) async {
    try {
      var dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.none) {
        Response _response = await dio.delete(url!,
            options: Options(headers: myHeaders),
            data: body,
            queryParameters: parameters);
        switch (_response.statusCode) {
          case 200:
            dynamic modelobj =
            await Models.getModelObject(modelName, _response.data);
            if (modelobj.code == 1) {
              return modelobj;
            } else {
              Toasts.getErrorToast(text: modelobj.message);
            }
            return null;

          default:
            Toasts.getErrorToast(text: Strings.badHappenedError);
            return null;
        }
      } else {
        Toasts.getErrorToast(text: Strings.noInternetError);
        return null;
      }
    } on Exception {
      Toasts.getErrorToast(text: Strings.badHappenedError);
      return null;
    }
  }
}

