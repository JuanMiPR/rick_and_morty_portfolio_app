import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationIndexController extends Notifier<int> {
  @override
  int build() => 0;

  void changeIndex(int index) {
    if (index != state) {
      state = index;
    }
  }
}
