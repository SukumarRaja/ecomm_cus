import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  String token = "";
  final String appBaseUrl;

  late Map<String, String> mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    token = "";
    mainHeaders = {
      'Content-type': 'application/json: charset=UTF-8',
      'Authorization': 'Bearer $token'
    };
  }

  Future<Response> getData({required String url}) async {
    try {
      print("passing url ${url}");
      Response response = await get(url);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
