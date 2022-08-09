import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../core/app_assets.dart';
import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  static const routeName = '/';

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Lottie.asset(splash),
        ),
      ),
    );
  }
}
