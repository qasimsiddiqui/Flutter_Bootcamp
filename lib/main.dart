import 'package:flutter/material.dart';
import 'package:flutter_application/first_screen.dart';
import 'package:flutter_application/second_screen.dart';
import 'package:flutter_application/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Home Page'),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(
              title: "Home Page",
            ),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final todos = List.generate(20, (i) {
    return Todo(
      'Todo $i',
      'A description of what needs to be done for Todo $i',
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            subtitle: Text(todos[index].description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FirstScreen(todo: todos[index]);
                  },
                ),
              );
            },
          );
        },
      )),
    );
  }
}
