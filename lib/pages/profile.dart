import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proxymed/models/user.dart';
class EspaceMed extends StatefulWidget {
  const EspaceMed({Key? key}) : super(key: key);

  @override
  _EspaceMedState createState() => _EspaceMedState();
}

class _EspaceMedState extends State<EspaceMed> {
  TextEditingController _nom = new TextEditingController();
  TextEditingController _dob = new TextEditingController();
  TextEditingController _sexe = new TextEditingController();
  TextEditingController _expertise = new TextEditingController();
  TextEditingController _formation = new TextEditingController();
  TextEditingController _exp = new TextEditingController();
  TextEditingController _pres = new TextEditingController();
  TextEditingController _horaire = new TextEditingController();
  TextEditingController _info = new TextEditingController();
  User thisUser = User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: SingleChildScrollView(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Fiche Médecin",
                  style: GoogleFonts.rajdhani(
                      fontSize: 30,
                      color: Color(0xFF43ABBB),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                    "Réservation d'un rendez-vous pour consultation en ligne with ProxyMed on",
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Text('Nom et prénom du Dr* :',
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Container(
                  width: 200,
                  child: TextField(
                    controller: _nom,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nom et Prenom'),
                  ),
                ),
                Text('Date de naissance* :',
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Container(
                  width: 200,
                  child: TextField(
                    controller: _dob,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Date de naissance'),
                  ),
                ),
                Text('Sexe du médecin* :',
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Container(
                  width: 200,
                  child: TextField(
                    controller: _sexe,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Sexe du médecin'),
                  ),
                ),
                Text('Expertises et actes',
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Container(
                  width: 200,
                  child: TextField(
                    controller: _expertise,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Expertises et actes'),
                  ),
                ),

                Text('Formation',
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Container(

                  width: 200,
                  child: TextField(
                    controller: _formation,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Formation'),
                  ),
                ),
                Text('éxperience',
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Container(
                  width: 200,
                  child: TextField(
                    controller: _exp,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'éxperience'),
                  ),
                ),
                Text('Présentation',
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Container(
                  width: 200,
                  child: TextField(
                    controller: _pres,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Présentation'),
                  ),
                ),
                Text('Horaires et contacts',
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Container(
                  width: 200,
                  child: TextField(
                    controller: _horaire,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Horaires et contacts'),
                  ),
                ),
                Text('Informations légales',
                    style: GoogleFonts.rajdhani(
                        fontSize: 20,
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w500)),
                Container(
                  width: 200,
                  child: TextField(
                    controller: _info,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Informations légales'),
                  ),
                ),
                MaterialButton(onPressed: (){

                  thisUser.setInfo(_nom.text, _dob.text, _sexe.text, _expertise.text, _formation.text, _exp.text, _pres.text, _horaire.text, _info.text);


                },child: Text('CONFIRMER'),minWidth: 100,height: 50,)
              ],
            ),
            Container(
              width: 300,
              child: Stack(
                children: [
                  Placeholder(),
                ],
              ),
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ],
        )));
  }
}
////back end////
