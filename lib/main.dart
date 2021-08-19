import 'package:flutter/material.dart';
import 'package:proxymed/pages/homePage.dart';
import 'package:proxymed/pages/eMed.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proxymed/pages/rendezVous.dart';
import 'package:proxymed/pages/dashboard.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

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
        'eMed': (context) => EMed(),
        '/': (context) => HomePage(),
        'newRdv': (context) => PageRdv(),
        'dash': (context)=> Dashboard(),

      },
    );
  }
}
