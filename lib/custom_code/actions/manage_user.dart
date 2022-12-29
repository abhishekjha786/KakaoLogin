// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<String> manageUser(
  // Parameters
  String emailAddress, //Email from Widget State
  String password, //Password from Widget State
  String randomDocGen, //Random String (min 10 max 25 - upper/lowe/digits)
) async {
  //Create the return msg
  String returnmsg = 'Success';
  //created time variable
  DateTime createdTime = DateTime.now();
  //Create the secondary app to create the users
  FirebaseApp app = await Firebase.initializeApp(
      name: randomDocGen, options: Firebase.app().options);

  try {
    //Create the user with the email & password provided
    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(
            email: emailAddress, password: password);
    // Set the UID generated to a variable so we can use it later
    String? uid = userCredential.user?.uid;
    // Check if UID is not empy
    if (uid != null) {
      //Get collection reference to create our new user document
      final CollectionReference<Map<String, dynamic>> usersRef =
          FirebaseFirestore.instance.collection('users');

      //Create new user document with the parameters we have (you can add more parameters and just add here the extra)
      usersRef.doc(uid).set({
        'uid': uid,
        'email': emailAddress,
        'created_time': createdTime,
      });
      return returnmsg;
    } else {
      return "Error while creating the UID";
    }
  } on FirebaseAuthException catch (e) {
    return e.code;
  }
}
