import 'package:get/instance_manager.dart';

import 'signup_controller.dart';

class SignupBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SignupController());
  }
}
