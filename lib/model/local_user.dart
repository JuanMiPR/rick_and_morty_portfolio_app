import 'package:firebase_auth/firebase_auth.dart';

class LocalUser {
  LocalUser({this.name});

  String? name;

  LocalUser.fromFirebaseUser(User user) : name = user.displayName;
}
