import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/local_user.dart';
import '../controllers/user_controller.dart';

final providerUserAuthState = StreamProvider<User?>((ref) async* {
  await for (final User? firebaseUser in FirebaseAuth.instance.idTokenChanges()) {
    yield firebaseUser;
  }
});

final providerUser =
    AsyncNotifierProvider<UserController, LocalUser?>(() => UserController());
