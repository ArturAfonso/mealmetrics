import 'package:get/get.dart';

import '../controllers/login_sreen_controller.dart';

class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(
      () => LoginScreenController(),
    );
  }
}
