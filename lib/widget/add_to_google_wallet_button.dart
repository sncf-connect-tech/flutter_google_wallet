import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glob/glob.dart';

class AddtoGoogleWalletButton extends StatelessWidget {
  final VoidCallback? onPress;
  final bool badgeButton;
  final String langue;
  const AddtoGoogleWalletButton({Key? key, this.onPress, this.badgeButton = false, required this.langue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonPrefix = badgeButton ? 'add-wallet-badge' : 'wallet-button';
    final path = 'assets/svg/button/${langue}_add_to_google_wallet_$buttonPrefix.svg';
    final file = Glob(path);
    return Column(
      children: [
        GestureDetector(onTap: onPress,
            child: file is File ?
          SvgPicture.asset(package: 'flutter_google_wallet','assets/svg/button/${langue}_add_to_google_wallet_$buttonPrefix.svg')
           : SvgPicture.asset(package: 'flutter_google_wallet','assets/svg/button/enUS_add_to_google_wallet_$buttonPrefix.svg')
    ),
      ],
    );
  }
}
