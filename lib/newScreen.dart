import 'package:flutter/material.dart';
import 'package:flutter_application/counterProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewScreen extends ConsumerStatefulWidget {
  const NewScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NewScreenState();
}

class _NewScreenState extends ConsumerState<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('New Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer(
              builder: (context, ref, child) {
                int count = ref.watch(counterProvider);

                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).decrement();
              },
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
