import 'package:get/get.dart';
import 'package:select_region/services/restful_service.dart';
import '/controllers/controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RestfulService());
    Get.put(HomeScreenController());
  }
}
