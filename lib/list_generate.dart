import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListGenerate(),
    );
  }
}

class ListGenerate extends StatelessWidget {
  const ListGenerate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: List.generate(
        100,
        (index) => ListTile(
          leading: const Icon(Icons.home),
          title: Text('$index       Sajjad ali'),
          // subtitle: const Text('12'),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
        ),
      ).toList(),
    ));
  }
}
