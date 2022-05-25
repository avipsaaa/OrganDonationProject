import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AfterLifeFirebaseUser {
  AfterLifeFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AfterLifeFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AfterLifeFirebaseUser> afterLifeFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AfterLifeFirebaseUser>(
        (user) => currentUser = AfterLifeFirebaseUser(user));
