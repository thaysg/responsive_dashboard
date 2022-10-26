import 'package:get/get.dart';

import 'pdv_controller.dart';

class PdvBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(PdvController());
  }
}
