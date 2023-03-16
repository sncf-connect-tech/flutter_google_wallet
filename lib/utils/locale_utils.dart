import 'dart:ui';

const defaultAssetLocale = Locale('en', 'US');

extension LocaleExtensions on Locale {
  String toAssetPrefix() {
    final locale = _existsInAssets() ? this : _getFallbackLocale();
    return locale._formatAssetPrefix();
  }

  bool _existsInAssets() => validAssetLocaleSet.contains(this);

  Locale _getFallbackLocale() {
    final primaryLocale = Locale(languageCode);
    if (primaryLocale._existsInAssets()) {
      return primaryLocale;
    }
    switch (languageCode) {
      case 'fr':
        return const Locale('fr', 'FR');
      case 'en':
        return const Locale('en', 'US');
      case 'es':
        return const Locale('es', 'ES');
      case 'zh':
        return const Locale('zh', 'HK');
      default:
        return defaultAssetLocale;
    }
  }

  String _formatAssetPrefix() {
    final scriptCodeOrEmpty = scriptCode ?? '';
    final countryCodeOrEmpty = countryCode?.toUpperCase() ?? '';
    return '$languageCode$scriptCodeOrEmpty$countryCodeOrEmpty';
  }
}

final validAssetLocaleSet = {
  const Locale('ar'),
  const Locale('az'),
  const Locale('bg'),
  const Locale('br'),
  const Locale('bs'),
  const Locale('by'),
  const Locale('ca'),
  const Locale('cz'),
  const Locale('de'),
  const Locale('dk'),
  const Locale('en', 'AU'),
  const Locale('en', 'CA'),
  const Locale('en', 'GB'),
  const Locale('en', 'IN'),
  const Locale('en', 'SG'),
  const Locale('en', 'US'),
  const Locale('en', 'ZA'),
  const Locale.fromSubtags(languageCode: 'es', scriptCode: '419'),
  const Locale('es', 'ES'),
  const Locale('es', 'US'),
  const Locale('et'),
  const Locale('fl'),
  const Locale('fr', 'CA'),
  const Locale('fr', 'FR'),
  const Locale('gr'),
  const Locale('he'),
  const Locale('hr'),
  const Locale('hu'),
  const Locale('hy'),
  const Locale('id'),
  const Locale('is'),
  const Locale('it'),
  const Locale('jp'),
  const Locale('ka'),
  const Locale('kk'),
  const Locale('ky'),
  const Locale('lt'),
  const Locale('lv'),
  const Locale('mk'),
  const Locale('my'),
  const Locale('nl'),
  const Locale('no'),
  const Locale('pl'),
  const Locale('ro'),
  const Locale('ru'),
  const Locale('se'),
  const Locale('sk'),
  const Locale('sl'),
  const Locale('sq'),
  const Locale('sr'),
  const Locale('th'),
  const Locale('tr'),
  const Locale('uk'),
  const Locale('uz'),
  const Locale('vi'),
  const Locale('zh', 'HK'),
  const Locale('zh', 'TW'),
};
