import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = [
    'Sajjad Ali',
    'Farooq',
    'Mohsin',
    'Nabeel Hassan',
    'Waqas Asghar',
    'Arbab',
    'Zahid',
    'Hassan',
    'umer',
    'Ali',
    'Ushan',
    'Ahmad',
    'Fazwan',
    'Zain',
    'Abdullah',
    'Asadullah',
    'Ali Hassan',
    'Abu Baker',
    'Arslan',
    'Muneeb',
    'Amir'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Card(
              color: Colors.orange[600],
              child: const Center(child: Text('List 1')),
            ),
            Card(
              color: Colors.red[500],
              child: const Center(child: Text('List 2')),
            ),
            Card(
              color: Colors.blue[500],
              child: const Center(child: Text('List 3')),
            ),
          ],
        ));
  }
}
