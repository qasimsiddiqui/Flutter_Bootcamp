import 'package:flutter/material.dart';
import 'package:flutter_application/second_screen.dart';
import 'package:flutter_application/todo.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key, required this.todo});

  static const routeName = '/first';

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('First screen')),
          Center(
            child: Text(
              todo.title,
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              todo.description,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondScreen()),
              );
            },
            child: const Text('Go To Second Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go Back'),
          )
        ],
      ),
    );
  }
}
