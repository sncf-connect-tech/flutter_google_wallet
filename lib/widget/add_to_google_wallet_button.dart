import 'package:flutter/material.dart';
import 'package:flutter_google_wallet/generated/l10n.dart';
import 'package:flutter_google_wallet/utils/locale_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddToGoogleWalletButton extends StatelessWidget {
  final VoidCallback? onPress;
  final GoogleWalletButtonType buttonType;
  final Locale? locale;
  final bool useInternalAssetPackage;

  const AddToGoogleWalletButton({
    Key? key,
    this.onPress,
    this.buttonType = GoogleWalletButtonType.primary,
    this.locale,
    this.useInternalAssetPackage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localeOrDefault =
        locale ?? WidgetsBinding.instance.platformDispatcher.locale;
    final buttonPrefix = buttonType == GoogleWalletButtonType.primary
        ? 'wallet-button'
        : 'add-wallet-badge';
    final assetRoot = useInternalAssetPackage ? 'lib/' : '';
    final path =
        '${assetRoot}assets/svg/button/${localeOrDefault.toAssetPrefix()}_add_to_google_wallet_$buttonPrefix.svg';
    return Semantics(
      button: true,
      label: '${I18nGoogleWallet.of(context).add_to} Google Wallet',
      child: GestureDetector(
        onTap: onPress,
        child: SvgPicture.asset(
          package: useInternalAssetPackage ? null : 'flutter_google_wallet',
          path,
        ),
      ),
    );
  }
}

enum GoogleWalletButtonType { primary, condensed }

@Deprecated('Use AddToGoogleWalletButton (with a capital T) instead')
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
  Widget build(BuildContext context) => AddToGoogleWalletButton(
        onPress: onPress,
        buttonType: badgeButton
            ? GoogleWalletButtonType.condensed
            : GoogleWalletButtonType.primary,
        locale: Locale(langue),
        useInternalAssetPackage: removeSvgPackage,
      );
}
