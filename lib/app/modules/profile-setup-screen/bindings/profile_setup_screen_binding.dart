import 'package:get/get.dart';

import '../controllers/profile_setup_screen_controller.dart';

class ProfileSetupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileSetupScreenController>(
      () => ProfileSetupScreenController(),
    );
  }
}
