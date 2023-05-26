import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'dart:async';
class VisibilityNotifier extends StateNotifier<bool> {
  VisibilityNotifier() : super(true); // Initial state is true (visible)
  void toggleVisibility() {
    state = !state;
  }
}

class Clock extends StateNotifier<DateTime>{
  Clock():super(DateTime.now()){
  _timer = Timer.periodic(Duration(seconds: 1), (_) {
    state = DateTime.now();
  });
}
  late final Timer _timer;
  @override
  void dispose(){
    _timer.cancel();
    super.dispose();
  }
}

final clockProvider = StateNotifierProvider<Clock,DateTime>((ref) {
  return Clock();
});
final visibilityProvider = StateNotifierProvider<VisibilityNotifier,bool>((ref) {
  return VisibilityNotifier();
});

class ClockWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch the StateNotifierProvider to return a DateTime (the state)
    final currentTime = ref.watch(clockProvider);
    final isVisible = ref.watch(visibilityProvider);
    // format the time as `hh:mm:ss`
    final timeFormatted = DateFormat.Hms().format(currentTime);
    return Scaffold(
        body: Center(
          child: Visibility(
            visible: isVisible,
            child: Text('$timeFormatted'),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () => ref.read(visibilityProvider.notifier).toggleVisibility(),
          tooltip:'Timer',
          child: Icon(isVisible ? Icons.visibility_off : Icons.visibility),
        ));
  }
}