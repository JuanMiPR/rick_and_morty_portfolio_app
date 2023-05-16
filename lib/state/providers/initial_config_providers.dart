import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_portfolio_app/state/providers/user_providers.dart';

final providerInitialConfig = FutureProvider<bool>((ref) async {
  bool initOk = true;
  await ref.read(providerUser.future).onError((error, stackTrace) {
    initOk = false;
    return null;
  });
  return initOk;
});
