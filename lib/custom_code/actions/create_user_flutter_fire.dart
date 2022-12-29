// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String?> createUserFlutterFire(
    String emailAddress, String password) async {
  String? returnAuth = "Valid";
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress, password: password);
    if (FirebaseAuth.instance.currentUser != null) {
      final CollectionReference<Map<String, dynamic>> usersRef =
          FirebaseFirestore.instance.collection('users');
      usersRef.doc(FirebaseAuth.instance.currentUser?.uid).set({
        'uid': FirebaseAuth.instance.currentUser?.uid,
        'email': emailAddress
      });
    }
  } on FirebaseAuthException catch (e) {
    returnAuth = e.code;
  }

  return returnAuth;
}
