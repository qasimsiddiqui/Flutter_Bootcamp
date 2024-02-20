import 'package:flutter/material.dart';
import 'package:flutter_application/image_section.dart';
import 'package:flutter_application/title_row.dart';

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
      home: const MyHomePage(title: 'Flutter layout demo'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSection(imagePath: 'assets/lake.jpg'),
            TitleRow(title: 'Lake', subTitle: 'Pakistan', starCount: 41),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Occaecat voluptate in Lorem incididunt voluptate dolore excepteur. Dolor ipsum magna sint sunt. Sint reprehenderit veniam aliqua esse aliqua dolore sit dolore tempor pariatur et officia consectetur laboris. Deserunt exercitation labore reprehenderit in ex ad occaecat aliqua aliquip minim nostrud id.',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ));
  }
}
