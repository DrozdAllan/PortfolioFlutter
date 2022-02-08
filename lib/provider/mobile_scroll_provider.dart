import 'package:flutter_riverpod/flutter_riverpod.dart';

final mobileScrollProvider =
    StateNotifierProvider<MyNotifier, int>((ref) => MyNotifier());

class MyNotifier extends StateNotifier<int> {
  MyNotifier() : super(0);

  void changeOffset(int newOffset) {
    state = 0;
    state = newOffset;
  }
}
