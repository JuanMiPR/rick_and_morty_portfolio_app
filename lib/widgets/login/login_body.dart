import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_portfolio_app/state/providers/user_providers.dart';
import 'package:rick_and_morty_portfolio_app/widgets/custom_loading.dart';

class LoginBody extends ConsumerWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      Text(ref.watch(providerUser).value?.name ?? 'No user'),
      TextButton(
          onPressed: () async {
            ref
                .read(providerUser.notifier)
                .login(email: 'prueba@prueba.com', password: 'prueba');
          },
          child: const Text('Login')),
      TextButton(
          onPressed: () async {
            ref.read(providerUser.notifier).logout();
          },
          child: const Text('Refresh')),
      const CustomLoading(vertical: true),
      const CustomLoading(),
    ]);
  }
}
