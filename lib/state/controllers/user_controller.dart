import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_portfolio_app/model/local_user.dart';

import '../providers/user_providers.dart';

class UserController extends AsyncNotifier<LocalUser?> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<LocalUser?> build() async {
    final firebaseUser = await ref.watch(providerUserAuthState.future);
    return firebaseUser != null
        ? LocalUser.fromFirebaseUser(firebaseUser)
        : null;
  }

  Future<void> login({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> logout() async {
    await _auth.signOut().then((_) => state = const AsyncData(null));
  }
}
