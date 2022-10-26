import 'package:get/get.dart';

import 'page_view_controller.dart';

class PageViewBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(PageViewController());
  }
}
