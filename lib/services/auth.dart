import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;


  Future signInAnon() async {

    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');


      } else {
        print('User is signed in!');
      }
    });

}
}