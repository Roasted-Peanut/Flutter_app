import 'package:fl_app/services/api_constants.dart';
import 'package:fl_app/services/api_service.dart';
import 'package:get/get.dart';

class UnAuthenRepository {
  final ApiService _apiService = ApiService(Get.find());

  Future login(String name, String pass) async {
    final request = _apiService.post(
        endpoint: ApiConstants.urlLogin,
        body: {"username": name, "password": pass});
    return request;
  }
}
