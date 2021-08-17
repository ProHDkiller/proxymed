import 'package:flutter/material.dart';
import 'package:proxymed/pages/homePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proxy Med',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),


      initialRoute: '/',
      routes: {

        '/' : (context) => HomePage(),

      },

    );
  }
}

