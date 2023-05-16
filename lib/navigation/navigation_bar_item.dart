import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationBarItem {
  const NavigationBarItem({
    required this.child,
    required this.path,
    required this.title,
    required this.icon,
    this.childRoutes = const [],
  });

  final Widget child;
  final Widget icon;
  final String path;
  final String title;
  final List<RouteBase> childRoutes;
}
