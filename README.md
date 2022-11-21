# flutter_google_wallet

A Flutter Google Wallet Plugin

## Getting Started

Create a FlutterGoogleWalletPlugin instance in your app.

Then, call initWalletClient to create the Wallet instance on Android when you need it in your app.

Before display the button, call getWalletApiAvailabilityStatus to know if the device has the wallet app.

Finally, display the button and call savePasses to save ticket in GoogleWallet.
