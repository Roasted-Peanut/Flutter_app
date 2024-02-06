import 'package:fl_app/controllers/unAuthentication/un_auth_controller.dart';
import 'package:fl_app/providers/un_auth_provider.dart';
import 'package:fl_app/repositories/un_auth_repository.dart';
import 'package:get/get.dart';

class UnAuthBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(() => LoginController());
    Get.lazyPut<UnAuthenRepository>(() => UnAuthenRepository());
    Get.lazyPut<UnAuthenProvider>(() => UnAuthenProvider(Get.find()));
    Get.lazyPut<UnAuthenController>(() => UnAuthenController(Get.find()));
  }
}