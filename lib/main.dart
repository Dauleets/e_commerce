import 'package:flutter/material.dart';
import 'package:shop2/Screen/components/basket.dart';
import 'package:shop2/Screen/home/components/home_screen.dart';
import 'package:shop2/constans.dart';

import 'Screen/components/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme:  Theme.of(context).textTheme.apply(bodyColor: kTetxColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: kBackgroundColor
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(),
        '/basket' : (context) => BasketPage(),
        '/profile' : (context) => ProfileScreen()
      },
    );
  }
}
