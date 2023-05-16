import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/providers/navigation_providers.dart';

class MainMenuScreen extends ConsumerStatefulWidget {
  const MainMenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends ConsumerState<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    final mainMenuItems = ref.watch(mainBottomNavigationBarItems);
    final index = ref.watch(providerMainBottomNavigationBarIndex);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (index) => ref
            .read(providerMainBottomNavigationBarIndex.notifier)
            .changeIndex(index),
        items: mainMenuItems
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.title))
            .toList(),
      ),
      body: mainMenuItems[index].child,
    );
  }
}
