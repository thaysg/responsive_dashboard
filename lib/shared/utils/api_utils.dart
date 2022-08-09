import 'package:get_storage/get_storage.dart';

class ApiUtils {
  ApiUtils._();

  static const Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  static Map<String, String> headersWithAuthorization({bool isForm = false}) {
    String? token = GetStorage().read('token');

    return {
      'Authorization': 'Bearer $token',
      'content-type': isForm ? 'multipart/form-data' : 'application/json',
    };
  }
}

class ApiEndpoints {
  ApiEndpoints._();

  static const base = '';

}