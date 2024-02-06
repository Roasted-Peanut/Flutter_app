import 'package:fl_app/services/api_service.dart';
import 'package:fl_app/services/base_provider.dart';
import 'package:get/instance_manager.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BaseProvider(), permanent: true);
    Get.put(ApiService(Get.find()), permanent: true);
  }
}