import 'package:flutter/material.dart';
import 'shopPage.dart';
import 'cartPage.dart';
import 'wishlistPage.dart';
import 'accountPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currIndex = 0;
  final List<Widget> urls = [
    Shop(Language.isArabic),
    Cart(),
    WishList(),
    Account(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: urls[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/shop.png",
              color: Colors.black,
            ),
            label: Language.isArabic ? 'متجر' : 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/cart.png",
              color: Colors.black,
            ),
            label: Language.isArabic ? 'المشتريات' : 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/wishlist.png",
              color: Colors.black,
            ),
            label: Language.isArabic ? 'الرغبات' : 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/account.png",
              color: Colors.black,
            ),
            label: Language.isArabic ? 'حسابي' : 'My Account',
          ),
        ],
        selectedItemColor: Color(0xFF1ccdca),
        selectedLabelStyle: Language.isArabic
            ? TextStyle(
                fontFamily: 'Janna LT',
                fontSize: 16.0,
                fontWeight: FontWeight.w800,
              )
            : TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 16.0,
                fontWeight: FontWeight.w800,
              ),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
    );
  }
}

class Language {
  static bool isArabic = false;
}
