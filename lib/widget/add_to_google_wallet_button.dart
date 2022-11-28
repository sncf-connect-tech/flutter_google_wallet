import 'package:flutter/material.dart';
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
        'assets/svg/button/${langue}_add_to_google_wallet_$buttonPrefix.svg';
    return Column(
      children: [
        GestureDetector(
            onTap: onPress,
            child: SvgPicture.asset(package: 'flutter_google_wallet', path)),
      ],
    );
  }
}
