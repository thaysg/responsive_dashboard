import 'package:flutter/material.dart';
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
    GetPage(
      name: PageViewPage.routeName,
      page: () => const PageViewPage(),
      binding: PageViewBindings(),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: PdvPage.routeName,
      page: () => const PdvPage(),
      binding: PdvBindings(),
    ),
    GetPage(
      name: ProfilePage.routeName,
      page: () => const ProfilePage(),
      binding: ProfileBindings(),
    ),
    GetPage(
      name: CreditCardPage.routeName,
      page: () => const CreditCardPage(),
      binding: CreditCardBindings(),
    ),
    GetPage(
      name: SearchScreen.routeName,
      page: () => const SearchScreen(),
    ),
  ];
}
