import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'home.dart';

class Shop extends StatefulWidget {
  final bool useArabic;
  Shop(this.useArabic);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: Language.isArabic
          ? 'https://julien-in.com/ar/'
          : 'https://julien-in.com/',
      javascriptMode: JavascriptMode.unrestricted,
      onPageFinished: (url) {
        if (url == 'https://julien-in.com/ar/') {
          setState(() {
            Language.isArabic = true;
          });
        } else if (url == 'https://julien-in.com/#TRPLINKPROCESSED') {
          setState(() {
            Language.isArabic = false;
          });
        }
      },
    );
  }
}
