import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'home.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: Language.isArabic
          ? 'https://julien-in.com/ar/my-account/'
          : 'https://julien-in.com/my-account/',
      javascriptMode: JavascriptMode.unrestricted,
      onPageFinished: (url) {
        if (url == 'https://julien-in.com/ar/my-account/') {
          Language.isArabic = true;
        } else if (url ==
            'https://julien-in.com/my-account/#TRPLINKPROCESSED') {
          Language.isArabic = false;
        }
      },
    );
  }
}
