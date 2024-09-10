import 'package:dio/dio.dart';

class Apiservice {
  final Dio dio;

  Apiservice(this.dio);
  final baseUrl = "http://makeup-api.herokuapp.com/api/v1/products.json?";

  get({required String parameters}) async {
    var response = await dio.get("$baseUrl$parameters");
    //print(baseUrl);
    return response.data as List<dynamic>;
  }
}
//#865B69,