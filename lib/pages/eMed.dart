import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';




class EMed extends StatefulWidget {
  const EMed({Key? key}) : super(key: key);

  @override
  _EMedState createState() => _EMedState();
}

class _EMedState extends State<EMed> {
  bool _initialized = false;
  bool _error=false;

  TextStyle appBarStyle =
      GoogleFonts.poppins(fontSize: 16, color: Colors.black);
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch(e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFD3ECEF),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        leadingWidth: 200,
        backgroundColor: Colors.white,
        leading: Container(
          height: kToolbarHeight,
          width: 200,
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            colorBlendMode: BlendMode.color,
            height: kToolbarHeight - 10,
          ),
          margin: EdgeInsets.only(left: 40),
        ),
        actions: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 250,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text(
                      'Accueil',
                      style: appBarStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Container(
                        child: Text('Espace Patient', style: appBarStyle)),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Espace Medecin', style: appBarStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child:
                        Text('Espace Personnels de sante', style: appBarStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('A-propos', style: appBarStyle),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Contact', style: appBarStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Text('Contact', style: appBarStyle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: CircleAvatar(
                      child: Icon(CupertinoIcons.camera),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          margin: EdgeInsets.symmetric(horizontal: 160, vertical: 100),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Color.fromARGB(127, 209, 220, 230),blurRadius: 3,spreadRadius: 4)],
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: Column(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                child: Text(
                  'Bonjour! Entrez votre email et votre mot de passe pour se connecter.',
                  style: GoogleFonts.workSans(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFE76880)),
                ),
              ),
              Container(
                  child: Text('Adresse email:',
                      style: GoogleFonts.workSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF43ABBB)))),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30,),
                width: 550,
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Adresse email",hintStyle: GoogleFonts.workSans(fontSize: 18,color: Color.fromARGB(220,209, 220, 230))),

                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(127, 209, 220, 230)),
              ),
              Container(


                child: Text('Mot de passe:',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.workSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF43ABBB))),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(127, 209, 220, 230)),
                width: 550,
                child: TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Mot de passe",hintStyle: GoogleFonts.workSans(fontSize: 18,color: Color.fromARGB(220,209, 220, 230))),
                ),
              ),
              Container(
                child: TextButton(onPressed: (){},
                  child: Text('Mot de pasee oublié ?',style:GoogleFonts.workSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE76880)),
                   ),
                ),
              ),
              Container(

                child: MaterialButton(height: 60,
              minWidth: 340,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFF43ABBB),
                  onPressed: () {
                    //TODO: implement login actions.
                  print(_emailController.text);
                  print(_passController.text);

                  print(_initialized);
                  print(_error);
                  signIn(_emailController.text,_passController.text);

                  },
                  child: Text('se Connecter',
                      style: GoogleFonts.workSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF))),

                ),
              ),
              SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


 signIn(String email, String pass) async {



   try {
     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
         email: email,
         password: pass
     );

     print('user created');
     print(userCredential.credential.toString());
     print(userCredential.credential!.asMap().toString());

   } on FirebaseAuthException catch (e) {
     if (e.code == 'weak-password') {
       print('The password provided is too weak.');
     } else if (e.code == 'email-already-in-use') {
       print('The account already exists for that email.');
     }
   } catch (e) {
     print(e);
   }

 }
