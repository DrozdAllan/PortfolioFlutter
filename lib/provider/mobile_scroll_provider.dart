import 'package:flutter_riverpod/flutter_riverpod.dart';

final mobileScrollProvider =
    StateNotifierProvider<MyNotifier, double>((ref) => MyNotifier());

class MyNotifier extends StateNotifier<double> {
  MyNotifier() : super(0);

  void changeOffset(double newOffset) {
    state = 0;
    state = newOffset;
  }
}
