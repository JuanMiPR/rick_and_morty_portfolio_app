import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_portfolio_app/state/providers/initial_config_providers.dart';
import 'package:rick_and_morty_portfolio_app/state/providers/navigation_providers.dart';

class App extends ConsumerStatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(providerInitialConfig).map(
          data: (_) => MaterialApp.router(
            title: 'Rick and Morty Portfolio App',
            routerConfig: ref.watch(appRoutes),
          ),
          loading: (_) => const CircularProgressIndicator(),
          error: (_) => const Text('Error'),
        );
  }
}
