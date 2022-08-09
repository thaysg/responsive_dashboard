import 'app_localization.dart';

enum LocalizationKeys {
  firstString,
  secondString,
}

extension LocalizationKeysExtention on LocalizationKeys {
  String get _string => toString().split('.')[1];

  String translate(context) {
    return AppLocalization.of(context).translate(_string) ?? '';
  }
}
