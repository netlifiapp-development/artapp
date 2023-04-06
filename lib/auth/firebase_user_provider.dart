import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ArtAssistantFirebaseUser {
  ArtAssistantFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ArtAssistantFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ArtAssistantFirebaseUser> artAssistantFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ArtAssistantFirebaseUser>(
      (user) {
        currentUser = ArtAssistantFirebaseUser(user);
        return currentUser!;
      },
    );
