import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'home.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: Language.isArabic
          ? 'https://julien-in.com/ar/cart/'
          : 'https://julien-in.com/cart/',
      javascriptMode: JavascriptMode.unrestricted,
      onPageFinished: (url) {
        if (url == 'https://julien-in.com/ar/cart/') {
          setState(() {
            Language.isArabic = true;
          });
        } else if (url == 'https://julien-in.com/cart/#TRPLINKPROCESSED') {
          setState(() {
            Language.isArabic = false;
          });
        }
      },
    );
  }
}
