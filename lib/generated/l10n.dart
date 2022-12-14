// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I18nGoogleWallet {
  I18nGoogleWallet();

  static I18nGoogleWallet? _current;

  static I18nGoogleWallet get current {
    assert(_current != null,
        'No instance of I18nGoogleWallet was loaded. Try to initialize the I18nGoogleWallet delegate before accessing I18nGoogleWallet.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I18nGoogleWallet> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I18nGoogleWallet();
      I18nGoogleWallet._current = instance;

      return instance;
    });
  }

  static I18nGoogleWallet of(BuildContext context) {
    final instance = I18nGoogleWallet.maybeOf(context);
    assert(instance != null,
        'No instance of I18nGoogleWallet present in the widget tree. Did you add I18nGoogleWallet.delegate in localizationsDelegates?');
    return instance!;
  }

  static I18nGoogleWallet? maybeOf(BuildContext context) {
    return Localizations.of<I18nGoogleWallet>(context, I18nGoogleWallet);
  }

  /// `Ajouter au`
  String get add_to {
    return Intl.message(
      'Ajouter au',
      name: 'add_to',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I18nGoogleWallet> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'nl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I18nGoogleWallet> load(Locale locale) => I18nGoogleWallet.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
