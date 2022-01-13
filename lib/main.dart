import 'package:flutter/material.dart';
import 'package:shopapp/screens/chocolatepage.dart';
import 'package:shopapp/screens/clothpage.dart';
import 'package:shopapp/screens/foodpage.dart';
import 'package:shopapp/screens/homepage.dart';
import 'package:shopapp/screens/laptoppage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const Homepage(),
        "/cloth":(context) =>const Clothpage(),
        "/laptop": (context) => const Laptoppage(),
        "/food": (context) => const Foodpage(),
        "/choco": (context) => const Chocopage(),
      },
      initialRoute: "/",

    );
  }
}

