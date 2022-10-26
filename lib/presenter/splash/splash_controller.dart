import 'package:get/get.dart';

import '../../routes/routes_imporst.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();
  loading() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(LoginPage.routeName);
  }

  @override
  void onReady() {
    loading();
    super.onReady();
  }
}
