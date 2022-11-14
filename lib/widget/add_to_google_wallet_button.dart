import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddtoGoogleWalletButton extends StatelessWidget {
  // TODO gérer de passer la langue
  final VoidCallback? onPress;
  const AddtoGoogleWalletButton({Key? key, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // InkWell ?
    return Column(
      children: [
        GestureDetector(onTap: onPress,child: SvgPicture.asset(package: 'flutter_google_wallet','assets/svg/button/frFR_add_to_google_wallet_wallet-button.svg')),
      ],
    );
  }
}
