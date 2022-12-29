import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DetectiveFirebaseUser {
  DetectiveFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DetectiveFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DetectiveFirebaseUser> detectiveFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DetectiveFirebaseUser>(
      (user) {
        currentUser = DetectiveFirebaseUser(user);
        return currentUser!;
      },
    );
