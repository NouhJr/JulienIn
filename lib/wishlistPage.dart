import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'home.dart';

class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: Language.isArabic
          ? 'https://julien-in.com/ar/wishlist/'
          : 'https://julien-in.com/wishlist/',
      javascriptMode: JavascriptMode.unrestricted,
      onPageFinished: (url) {
        if (url == 'https://julien-in.com/ar/wishlist/') {
          setState(() {
            Language.isArabic = true;
          });
        } else if (url == 'https://julien-in.com/wishlist/#TRPLINKPROCESSED') {
          setState(() {
            Language.isArabic = false;
          });
        }
      },
    );
  }
}
