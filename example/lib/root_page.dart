import 'package:bottom_nav_bar/bottom_nav_bar.dart';
import 'package:example/pages/page_four.dart';
import 'package:example/pages/page_one.dart';
import 'package:example/pages/page_three.dart';
import 'package:example/pages/page_two.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _body() => SizedBox.expand(
        child: IndexedStack(
          index: _currentIndex,
          children: const <Widget>[
            PageOne(),
            PageTwo(),
            PageThree(),
            PageFour(),
          ],
        ),
      );

  Widget _bottomNavBar() => BottomNavBar(
        showElevation: true,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
        },
        items: <BottomNavBarItem>[
          BottomNavBarItem(
            title: 'Home',
            icon: const Icon(Icons.home),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.red.shade300,
          ),
          BottomNavBarItem(
            title: 'Profile',
            icon: const Icon(Icons.person),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.blue.shade300,
          ),
          BottomNavBarItem(
            title: 'Message',
            icon: const Icon(Icons.chat_bubble),
            inactiveColor: Colors.black,
            activeColor: Colors.white,
            activeBackgroundColor: Colors.green.shade300,
          ),
          BottomNavBarItem(
            title: 'Settings',
            icon: const Icon(Icons.settings),
            inactiveColor: Colors.black,
            activeColor: Colors.black,
            activeBackgroundColor: Colors.yellow.shade300,
          ),
        ],
      );
}
