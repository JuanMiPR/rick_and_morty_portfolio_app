import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_portfolio_app/state/controllers/bottom_navigation_index_controller.dart';
import 'package:rick_and_morty_portfolio_app/templates/app_bar_template.dart';

import '../../navigation/main_menu_screen.dart';
import '../../navigation/navigation_bar_item.dart';

final appRoutes = Provider<RouterConfig<Object>>((ref) {
  final mainMenuItems = ref.watch(mainBottomNavigationBarItems);
  // final notLoggedRouteMap = GoRouter(
  //   routes: [
  //     GoRoute(
  //       path: '/',
  //       builder: (context, state) {
  //         return MaterialApp(
  //           builder: (context, child) => const LoginScreen(),
  //         );
  //       },
  //     ),
  //   ],
  // );
  final loggedRouteMap = GoRouter(
    initialLocation: '/home',
    routes: [
      ShellRoute(
          routes: mainMenuItems
              .map((e) => GoRoute(
                    path: e.path,
                    builder: (context, state) => e.child,
                    routes: e.childRoutes,
                    name: e.title,
                  ))
              .toList(),
          builder: (context, state, child) => const MainMenuScreen()),
    ],
  );
  return loggedRouteMap;
});

final mainBottomNavigationBarItems = Provider<List<NavigationBarItem>>((ref) {
  return [
    const NavigationBarItem(
      child: AppBarTemplate(child: Text('Home')),
      icon: Icon(Icons.home),
      path: '/home',
      title: 'Home',
    ),
    const NavigationBarItem(
      child: AppBarTemplate(child: Text('Home2')),
      icon: Icon(Icons.home),
      path: '/home2',
      title: 'Home2',
    ),
  ];
});

final providerMainBottomNavigationBarIndex =
    NotifierProvider<BottomNavigationIndexController, int>(
        BottomNavigationIndexController.new);
