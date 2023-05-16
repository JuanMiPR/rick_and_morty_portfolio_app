import 'package:flutter/material.dart';

class AppBarTemplate extends StatelessWidget {
  const AppBarTemplate({Key? key, required this.child, this.title})
      : super(key: key);
  final String? title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: title?.isNotEmpty ?? false
              ? Text(title!)
              : const SizedBox.shrink()),
      body: child,
    );
  }
}
