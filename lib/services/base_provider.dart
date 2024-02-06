import 'package:get/get_connect.dart';
import 'package:fl_app/services/api_constants.dart';
import 'package:fl_app/services/interceptors/request_interceptor.dart';
import 'package:fl_app/services/interceptors/response_interceptor.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
