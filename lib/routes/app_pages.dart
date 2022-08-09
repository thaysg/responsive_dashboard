import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'routes_imporst.dart';

class AppPages {
  const AppPages._();

  static final pages = <GetPage>[
    GetPage(
      name: SplashPage.routeName,
      page: () => const SplashPage(),
      binding: SplashBindings(),
      curve: Curves.bounceIn,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: LoginPage.routeName,
      page: () => const LoginPage(),
      binding: LoginBindings(),
      curve: Curves.bounceIn,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: SignupPage.routeName,
      page: () => const SignupPage(),
      binding: SignupBindings(),
    ),
  ];
}
