import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListBuilder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListBuilder(title: 'ListBuilder'),
    );
  }
}

class ListBuilder extends StatefulWidget {
  const ListBuilder({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  final list = [
    'Sajjad Ali',
    'Farooq',
    'Mohsin',
    'Aarij',
    'Wali',
    'Sufyan',
    'Nabeel Hassan',
    'Waqas Asghar',
    'Arbab',
    'Zahid',
    'Hassan',
    'Umer',
    'Ali',
    'Usman',
    'Arham'
        'Ahmad',
    'Fazwan',
    'Zain',
    'Abdullah',
    'Asadullah',
    'Ali Hassan',
    'Abu Baker',
    'Arslan',
    'Muneeb',
    'Amir',
    'Saqlaan',
    'Sajjad Ali',
    'Farooq',
    'Mohsin',
    'Nabeel Hassan',
    'Waqas Asghar',
    'Arbab',
    'Zahid',
    'Hassan',
    'Umer',
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
    'Amir',
    'Saqlaan'
  ];

  final subtitles = [
    "Here is  name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is  name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is  name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is  name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is  name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is  name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle",
    "Here is   name subtitle"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      drawer: const Drawer(),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) => Card(
              child: ListTile(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(list[index] + ' pressed!'),
                    ));
                  },
                  title: Text(
                    list[index],
                    style: TextStyle(
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)]),
                  ),
                  subtitle: Text(subtitles[index]),
                  leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/POKEMON.png')),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded)))),
    );
  }
}
