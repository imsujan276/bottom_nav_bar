import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Page Two"),
      ),
      body: Container(
        color: Colors.grey.shade100,
        child: const Center(
          child: Text(" Profile"),
        ),
      ),
    );
  }
}
