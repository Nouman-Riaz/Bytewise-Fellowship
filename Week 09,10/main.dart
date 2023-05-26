import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'stateNotifier.dart';
import 'futureProvider.dart';
void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ClockWidget(),
    );
  }
}
final providerValue = Provider<int>((ref){
  return 57;
});
final counterStateProvider = StateProvider<int>((ref){
  return 0;
});

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);
    return Scaffold(
        body: Center(
         child: Text(
           'Value: ${counter}',
         ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> ref.read(counterStateProvider.notifier).state++,
        child: Icon(Icons.add),
      )
    );
  }
}



