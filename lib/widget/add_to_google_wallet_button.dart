import 'package:flutter/material.dart';
import 'package:flutter_google_wallet/utils/langue_utils.dart';
import 'package:flutter_google_wallet/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddtoGoogleWalletButton extends StatelessWidget {
  final VoidCallback? onPress;
  final bool badgeButton;
  final String langue;

  const AddtoGoogleWalletButton(
      {Key? key, this.onPress, this.badgeButton = false, required this.langue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonPrefix = badgeButton ? 'add-wallet-badge' : 'wallet-button';
    final path =
        'assets/svg/button/${normalizedLocale(locale: langue)}_add_to_google_wallet_$buttonPrefix.svg';
    return Semantics(
      button: true,
      label: '${S.of(context).add_to} Google Wallet',
      child: GestureDetector(
            onTap: onPress,
            child: SvgPicture.asset(package: 'flutter_google_wallet', path)),
    );
  }
}
