import 'package:flutter/material.dart';
import 'package:proxymed/pages/homePage.dart';
import 'package:proxymed/pages/eMed.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proxymed/pages/profile.dart';
import 'package:proxymed/pages/rendezVous.dart';
import 'package:proxymed/pages/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:proxymed/pages/dashMed.dart';
import 'package:proxymed/pages/details.dart';
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
        'profile':(context) =>EspaceMed(),
        'eMed': (context) => EMed(),
        '/': (context) => HomePage(),
        'newRdv': (context) => PageRdv(),
        'dash': (context) => Dashboard(),
        'dashMed': (context) => DashMed(),
        'details':(context) => Details(),

      },
    );
  }
}
