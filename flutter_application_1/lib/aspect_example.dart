import 'package:flutter/material.dart';

class AspectExample extends StatefulWidget {
  const AspectExample({Key? key}) : super(key: key);

  @override
  _AspectExampleState createState() => _AspectExampleState();
}

class _AspectExampleState extends State<AspectExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: AspectRatio(
          aspectRatio: 0.1,
          child: Container(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
