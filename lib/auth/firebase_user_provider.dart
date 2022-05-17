import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FYPOrganDonationFirebaseUser {
  FYPOrganDonationFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FYPOrganDonationFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FYPOrganDonationFirebaseUser> fYPOrganDonationFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FYPOrganDonationFirebaseUser>(
            (user) => currentUser = FYPOrganDonationFirebaseUser(user));
