import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class AppLocalization {
  late final Locale locale;
  static late Locale currentLocale;

  AppLocalization(this.locale) {
    currentLocale = locale;
  }

  static AppLocalization of(BuildContext context) {
    return Localizations.of(context, AppLocalization);
  }

  late Map<String, String> _localizedString;

  Future<void> load() async {
    final jsonString = await rootBundle
        .loadString('assets/languages/${locale.languageCode}.json');

    Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    _localizedString =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String? translate(String key) {
    return _localizedString[key];
  }

  static const supportedLocales = [
    Locale('en', 'US'),
    Locale('pt', 'BR'),
    Locale('es', 'ES'),
  ];

  static Locale? localeResolutionCallBack(
      Locale? locale, Iterable<Locale>? supportedLocales) {
    if (supportedLocales != null && locale != null) {
      return supportedLocales.firstWhere(
          (element) => element.languageCode == locale.languageCode,
          orElse: () => supportedLocales.first);
    }

    return null;
  }

  static const LocalizationsDelegate<AppLocalization> _delegate =
      _AppLocalizationDelegate();

  static const localizationsDelegate = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    _delegate
  ];
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'pt', 'es'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization service = AppLocalization(locale);
    await service.load();
    return service;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) {
    return false;
  }
}

class LocalizationController extends GetxController {
  String currentLanguage = ''.obs.toString();

  void toggleLanguage() {
    if (AppLocalization.currentLocale.languageCode == 'en') {
      currentLanguage = 'en';
    } else if (currentLanguage == 'pt') {
      currentLanguage = 'pt';
    } else {
      currentLanguage = 'es';
    }
    update();
  }
}
