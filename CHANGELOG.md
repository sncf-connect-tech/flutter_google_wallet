## 0.0.9

* Fixed SVG retrieval for languages with country code that don't have a match in SVG assets

## 0.0.8

* Fixed SVG in all supported locales
* Renamed Add*to*GoogleWalletButton to Add*To*GoogleWalletButton (with a capital T): AddToGoogleWalletButton still exists but is deprecated
* The `badgeButton` field is now the `buttonType` field, and is now of type `GoogleWalletButtonType` which has 2 possible values: 
  * `GoogleWalletButtonType.primary` which is equivalent to `badgeButton = false`
  * `GoogleWalletButtonType.condensed` which is equivalent to `badgeButton = true`
* The field `removeSvgPackage` has been renamed to `useInternalAssetPackage`
* The field `langue` has been renamed to `locale`, and is now of type `Locale`

## 0.0.7

* Fix spain locale

## 0.0.6

* Fix asset path

## 0.0.5

* Revert dart version

## 0.0.4

* Fix google svgs definitions

## 0.0.3

* Update Readme

## 0.0.2

* Add accessibility on button

## 0.0.1

* Initial version of the library.
