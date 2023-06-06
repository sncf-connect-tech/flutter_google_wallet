# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2023-06-06

### Changes

---

- Use kotlin as output language for generated Pigeon bindings
- Use gradle 7.5

## 2023-05-23

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_google_wallet` - `v0.1.0`](#flutter_google_wallet---v010)

---

#### `flutter_google_wallet` - `v0.1.0`

 - support Flutter 3.10 / Dart 3.0.0

 - **BUILD**: support Flutter 3.10 / Dart 3.0.0

## 0.1.0

 - support Flutter 3.10 / Dart 3.0.0

 - **BUILD**: support Flutter 3.10 / Dart 3.0.0

## 0.0.11

*  Bump version golden_toolkit to 0.15.0 and flutter_svg to 2.0.0

## 0.0.10

* Bump pigeon version to ^9.2.4

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
