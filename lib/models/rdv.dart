import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Rdv {
  final String? nom;

  final String? dob;

  final String? sexe;

  final String? taille;

  final String? poids;

  final String? but;

  final String? tabac;

  final String? tabacType;

  final String? pollutionPro;

  final String? pollutionAtm;

  final String? maladeChro;

  final String? typeChro;

  final String? trait;

  Rdv(
      {this.nom, this.dob,
      this.sexe,
      this.taille,
      this.poids,
      this.but,
      this.tabac,
      this.tabacType,
      this.pollutionPro,
       this.pollutionAtm,
       this.maladeChro,
      this.typeChro,
       this.trait});

  Future<void> addRdv(String idMed) {

    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference rdvs = FirebaseFirestore.instance.collection('rdv');
    // Call the user's CollectionReference to add a new user
    return rdvs
        .add({
      'idMed': idMed, // John Doe
      'NomP': this.nom, // Stokes and Sons
      'DOB': this.dob,
      'sexe':this.sexe,
      'taille':this.taille,
      'poids':this.poids,
      'but':this.but,
      'tabac':this.tabac,
      'typeTabac':this.tabacType,
      'pollutionPro':this.pollutionPro,
      'pollutionAtm':this.pollutionAtm,
      'malade':this.maladeChro,
      'maladie':this.typeChro,
      'trait':this.trait,

    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }


}




