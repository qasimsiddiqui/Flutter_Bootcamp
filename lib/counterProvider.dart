import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = NotifierProvider<Counter, int>(Counter.new);

class Counter extends Notifier<int> {
  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }

  @override
  int build() {
    return 0;
  }
}
