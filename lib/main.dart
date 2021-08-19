import 'package:flutter/material.dart';
import 'package:proxymed/pages/homePage.dart';
import 'package:proxymed/pages/eMed.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

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
      initialRoute: 'eMed',
      routes: {
        'eMed': (context) => EMed(),
        '/': (context) => HomePage(),
      },
    );
  }
}
