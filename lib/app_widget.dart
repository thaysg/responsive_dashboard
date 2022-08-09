import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_bindings.dart';
import 'core/app_constants.dart';
import 'core/app_localization.dart';
import 'routes/app_pages.dart';
import 'routes/routes_imporst.dart';
import 'theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final localizationController = Get.put(LocalizationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
      init: localizationController,
      initState: (_) {},
      builder: (LocalizationController controller) {
        return GetMaterialApp(
          theme: AppTheme.light,
          getPages: AppPages.pages,
          darkTheme: AppTheme.light,
          themeMode: ThemeMode.light,
          title: AppConstants.appName,
          initialBinding: AppBindings(),
          debugShowCheckedModeBanner: false,
          initialRoute: SplashPage.routeName,
          defaultTransition: Transition.native,
          locale: controller.currentLanguage != ''
              ? Locale(controller.currentLanguage, '')
              : null,
          localeResolutionCallback: AppLocalization.localeResolutionCallBack,
          supportedLocales: AppLocalization.supportedLocales,
          localizationsDelegates: AppLocalization.localizationsDelegate,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 0.9),
              child: child ?? Container(),
            );
          },
        );
      },
    );
  }
}
