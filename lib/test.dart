import 'package:flutter/material.dart';

class Text extends StatelessWidget {
  const Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestHomePage(judul: 'judul disini'),
    );
  }
}

class TestHomePage extends StatefulWidget {
  String? judul;
  TestHomePage({Key? key, this.judul}) : super(key: key);

  @override
  _TestHomePageState createState() => _TestHomePageState();
}

class _TestHomePageState extends State<TestHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.judul)
    );
  }
}
