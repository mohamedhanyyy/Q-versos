// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
//
// import '../../shared/const/api_consts.dart';
// import '../shared_preferences/preferences_helper.dart';
//
// class DioHelper {
//   static BaseOptions opts = BaseOptions(
//     baseUrl: EndPoints.baseUrl,
//     headers: {
//       'lang': '${PreferencesHelper.getLang()}',
//     },
//     receiveDataWhenStatusError: true,
//     followRedirects: false,
//     validateStatus: (status) {
//       return status! <= 500;
//     },
//   );
//
//   static Dio init() => Dio(opts);
//
//   static Dio? dio = init();
//
//   static Future<Response?> postData(
//       {required String url, Map<String, dynamic>? data}) async {
//     String? token = PreferencesHelper.getToken();
//     try {
//       Response? response = await dio?.post(url,
//           options:
//               Options(headers: {'Authorization': 'Bearer ${token.toString()}'}),
//           data: data);
//
//       if (kDebugMode) {
//         print(response);
//       }
//       return response;
//     } catch (e) {
//       return e is DioException ? e.response : null;
//     }
//   }
//
//   static Future<Response?> getData(
//       {required String url,
//       required Map<String, dynamic> queryParameters}) async {
//     try {
//       Response? response =
//           await dio?.get(url, queryParameters: queryParameters);
//
//       return response;
//     } catch (e) {
//       return e is DioException ? e.response : null;
//     }
//   }
//
//   static Future<Response?> putData(
//       {required String url, required Map<String, dynamic> data}) async {
//     try {
//       Response? response = await dio?.put(url, data: data);
//       return response;
//     } catch (e) {
//       return e is DioException ? e.response : null;
//     }
//   }
// }
