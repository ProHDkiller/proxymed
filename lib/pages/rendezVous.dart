import 'package:flutter/material.dart';
import 'package:proxymed/models/rdv.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PageRdv extends StatefulWidget {
  const PageRdv({Key? key}) : super(key: key);

  @override
  _PageRdvState createState() => _PageRdvState();
}

class _PageRdvState extends State<PageRdv> {

  String? _site;
  List<String> listRadio = [
    'un premier diagnostique',
    'une surveillance évolutive',
    'une expertise',
    'la médecine de travail',
    'Autre'
  ];
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference rdvs = FirebaseFirestore.instance.collection('rdv');

  Future<void> addRdv(String UId, Rdv rdv) {
    // Call the user's CollectionReference to add a new user
    return rdvs
        .add({
          'full_name': 'fullName', // John Doe
          'company': 'company', // Stokes and Sons
          'age': 'age' // 42
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  TextEditingController nom = new TextEditingController();
  TextEditingController dob = new TextEditingController();
  TextEditingController sexe = new TextEditingController();
  TextEditingController taille = new TextEditingController();
  TextEditingController poids = new TextEditingController();
  TextEditingController typeTabac = new TextEditingController();
  TextEditingController maladieChro = new TextEditingController();
  TextEditingController traitment = new TextEditingController();

  String? but;
  String? tabac;
  String? pollutionPro;
  String? pollutionAtm;
  String? malade;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              child: Column(
                children: [
                  Placeholder(),
                  Row(
                    children: [Placeholder(), Text('Username Here')],
                  ),
                  Text('Dashboard'),
                  Text('Appointment List'),
                  Text('Patients list'),
                  Text('Calendar'),
                  Text('Settings'),
                  SizedBox(
                    height: 100,
                  ),
                  Text('Logout'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text("Let's confirm your info"),
                  Text(
                      "Réservation d'un rendez-vous pour votre consultation en ligne with ProxyMed on"),
                  Row(
                    children: [
                      Icon(Icons.calendar_view_day),
                      Text('Date and time'),
                      Text('Change time'),
                    ],
                  ),
                  Text('Nom et prénom'),
                  Container(
                      width: 300,
                      child: TextFormField(
                        controller: nom,
                      )),
                  Text('Date de Naissance:*'),
                  Container(
                      width: 300,
                      child: TextFormField(
                        controller: dob,
                      )),
                  Text('Sexe du patient:*'),
                  Container(
                      width: 300,
                      child: TextFormField(
                        controller: sexe,
                      )),
                  Text('La taille du patient (en cm): (optional)'),
                  Container(
                      width: 300,
                      child: TextFormField(
                        controller: taille,
                      )),
                  Text('Le poids du patient (en Kg): (optional)'),
                  Container(
                      width: 300,
                      child: TextFormField(
                        controller: poids,
                      )),
                  Text("But d'exploitation:"),
                  Radio(
                      value: listRadio[0],
                      groupValue: _site,
                      onChanged: (String? value) {
                        setState(() {
                          _site = value;
                          but = value;
                        });
                      }),
                  Radio(
                      value: listRadio[1],
                      groupValue: _site,
                      onChanged: (String? value) {
                        setState(() {
                          but = value;
                          _site = value;
                        });
                      }),
                  Radio(
                      value: listRadio[2],
                      groupValue: _site,
                      onChanged: (String? value) {
                        setState(() {
                          _site = value;
                          but = value;
                        });
                      }),
                  Radio(
                      value: listRadio[3],
                      groupValue: _site,
                      onChanged: (String? value) {
                        setState(() {
                          _site = value;
                          but = value;
                        });
                      }),
                  Radio(
                      value: listRadio[4],
                      groupValue: _site,
                      onChanged: (String? value) {
                        setState(() {
                          _site = value;
                          but = value;
                        });
                      }),
                  Text('Le patient est-t-il tabagique?:'),
                  Radio(
                      value: 'Oui',
                      groupValue: tabac,
                      onChanged: (String? value) {
                        setState(() {
                          tabac = value;
                        });
                      }),
                  Radio(
                      value: 'non',
                      groupValue: tabac,
                      onChanged: (String? value) {
                        setState(() {
                          tabac = value;
                        });
                      }),
                  Text(
                      "Si oui, précisez s'il est passif/ actif/ occasionnel/ ancien"),
                  
                  TextFormField(controller: typeTabac,),
                  Text('Pollution Proferssionel?'),
                  
                  Radio(
                      value: 'Oui',
                      groupValue: pollutionPro,
                      onChanged: (String? value) {
                        setState(() {
                          pollutionPro = value;
                        });
                      }),
                  Radio(
                      value: 'non',
                      groupValue: pollutionPro,
                      onChanged: (String? value) {
                        setState(() {
                          pollutionPro = value;
                        });
                      }),
                  Text('Pollution Atmo?'),

                  Radio(
                      value: 'Oui',
                      groupValue: pollutionAtm,
                      onChanged: (String? value) {
                        setState(() {
                          pollutionAtm = value;
                        });
                      }),
                  Radio(
                      value: 'non',
                      groupValue: pollutionAtm,
                      onChanged: (String? value) {
                        setState(() {
                          pollutionAtm = value;
                        });
                      }),
                  Text('Pollution Atmo?'),

                  Radio(
                      value: 'Oui',
                      groupValue: malade,
                      onChanged: (String? value) {
                        setState(() {
                          malade = value;
                        });
                      }),
                  Radio(
                      value: 'non',
                      groupValue: malade,
                      onChanged: (String? value) {
                        setState(() {
                          malade = value;
                        });
                      }),
                  Text('Type Maladie?:'),
                  TextFormField(controller: maladieChro,),

                  Text('Traitement?:'),
                  TextFormField(controller: traitment,),



                  ElevatedButton(
                      onPressed: () {
                        Rdv newRdv = Rdv(
                            tabacType: typeTabac.text,
                            nom: nom.text,
                            dob: dob.text,
                            sexe: sexe.text,
                            but: but,
                            tabac: 'Oui',
                            pollutionPro: pollutionPro,
                            pollutionAtm: pollutionAtm,
                            maladeChro: malade,
                            typeChro: maladieChro.text,
                            trait: traitment.text
                        );

                            newRdv.addRdv('idMed');











                        },
                      child: Text('PRESS ME')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

