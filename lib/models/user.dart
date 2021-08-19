import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  FirebaseAuth auth = FirebaseAuth.instance;
   String? nom;
   String? dob;
   String? sexe;
   String? expertise;
   String? formation;
   String? exp;
   String? pres;
   String? horaire;
   String? info;

  User(
     {this.nom,
      this.dob,
      this.sexe,
      this.expertise,
      this.formation,
      this.exp,
      this.pres,
      this.horaire,
      this.info});

  Map<String, String?> getInfo() {
    return {
      'nom': this.nom,
      'dob': this.dob,
      'sexe': this.sexe,
      'expertise': this.expertise,
      'formation': this.formation,
      'exp': this.exp,
      'pres': this.pres,
      'horaire': this.horaire,
      'info': this.info,
      'Uid':auth.currentUser!.uid
    };
  }

  setInfo(
      String nom, String dob,String sexe,String expertise,String formation,String exp,String pres,String horaire,String info) {

    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    CollectionReference Users = _firestore.collection('Users');

    this.nom=nom;
    this.dob=dob;
    this.sexe=sexe;
    this.expertise=expertise;
    this.formation=formation;
    this.exp=exp;
    this.pres=pres;
    this.horaire=horaire;
    this.info=info;

    print('Trying to Edit ');
    Users.doc(auth.currentUser!.uid).set(

        {'nom': this.nom,
        'dob': this.dob,
        'sexe': this.sexe,
        'expertise': this.expertise,
        'formation': this.formation,
        'exp': this.exp,
        'pres': this.pres,
        'horaire': this.horaire,
        'info': this.info,
        'Uid':auth.currentUser!.uid}
        );
print(auth.currentUser!.uid);
print('Edit Done');

  }
  initialize(){


  }
}

