import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCnyk8JK61atyvJ18lZIqC3NyWVOBvW9rw",
            authDomain: "detective-60142.firebaseapp.com",
            projectId: "detective-60142",
            storageBucket: "detective-60142.appspot.com",
            messagingSenderId: "400681647041",
            appId: "1:400681647041:web:7539d243e87f8926a20d40",
            measurementId: "G-V770P6VWZ0"));
  } else {
    await Firebase.initializeApp();
  }
}
