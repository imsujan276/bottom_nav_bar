import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Page Three"),
      ),
      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text(" Message"),
        ),
      ),
    );
  }
}
