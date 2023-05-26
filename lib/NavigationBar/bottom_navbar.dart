import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:task/screen/categories.dart';
import 'package:task/screen/fav_screen.dart';
import 'package:task/screen/home.dart';
import 'package:task/screen/profile_screen.dart';
import 'package:task/screen/search.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = '/BottomNavBar';

  const BottomNavBar({super.key});
  @override

  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  final GlobalKey _bottomNavigationKey = GlobalKey();

  List<Widget> navigationWidget = [
    const Home(),
    Items(),
    ListItems(),
    WishList(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: index,
        height: 50.0,
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.widgets, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.favorite_border, size: 30),
          Icon(Icons.account_circle_rounded, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (tapedIndex) {
          setState(() {
            index = tapedIndex;
          });
        },
      ),
      body: navigationWidget[index],
    );
  }
}
