import 'package:flutter/material.dart';
import 'package:flutter_google_wallet/utils/langue_utils.dart';
import 'package:flutter_google_wallet/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddtoGoogleWalletButton extends StatelessWidget {
  final VoidCallback? onPress;
  final bool badgeButton;
  final String langue;
  final bool removeSvgPackage;

  const AddtoGoogleWalletButton(
      {Key? key,
      this.onPress,
      this.badgeButton = false,
      required this.langue,
      bool? removeSvgPackage})
      : removeSvgPackage = removeSvgPackage ?? false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonPrefix = badgeButton ? 'add-wallet-badge' : 'wallet-button';
    final path =
        '${removeSvgPackage ? 'lib/' : ''}assets/svg/button/${normalizedLocale(locale: langue)}_add_to_google_wallet_$buttonPrefix.svg';
    return Semantics(
      button: true,
      label: '${I18nGoogleWallet.of(context).add_to} Google Wallet',
      child: GestureDetector(
          onTap: onPress,
          child: SvgPicture.asset(
              package: removeSvgPackage ? null : 'flutter_google_wallet',
              path)),
    );
  }
}
