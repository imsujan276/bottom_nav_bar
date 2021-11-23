import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Page One"),
      ),
      body: Container(
        color: Colors.redAccent.shade100,
        child: const Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
