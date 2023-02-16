import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TTSpeakingFirebaseUser {
  TTSpeakingFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TTSpeakingFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TTSpeakingFirebaseUser> tTSpeakingFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TTSpeakingFirebaseUser>(
      (user) {
        currentUser = TTSpeakingFirebaseUser(user);
        return currentUser!;
      },
    );
