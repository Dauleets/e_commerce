import 'package:flutter/material.dart';
import 'package:shop2/Screen/components/basket.dart';
import 'package:shop2/Screen/components/profile.dart';
import 'package:shop2/Screen/home/components/body.dart';
import 'package:shop2/Screen/home/components/menu.dart';
import 'package:shop2/constans.dart';




class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List _children = [
    Body(),
    BasketPage(),
    ProfileScreen()
  ];
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),
      body: _children[_currentIndex],
      drawer: Drawer(
        child: Menu(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kPrimaryColor,
        iconSize: 25,
        onTap: onTabTapped,
        
        unselectedLabelStyle: TextStyle(
          color: kBackgroundColor
        ),
        selectedLabelStyle: TextStyle(
          color: kBackgroundColor
        ),
        fixedColor: kBackgroundColor,
        unselectedItemColor: kBackgroundColor.withOpacity(0.7),

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: kBackgroundColor),
            label: 'ГЛАВНАЯ'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_sharp, color: kBackgroundColor),
            label: 'ЗАКАЗАТЬ'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: kBackgroundColor),
            label: 'ПРОФИЛЬ'
          )
        ],
      )
    );
  }

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }


