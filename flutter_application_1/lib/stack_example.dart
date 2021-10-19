import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Stack(
        children: [
          Image.network('https://picsum.photos/500/800'),
          Positioned(
            right: 30,
            bottom: 40,
            child: Container(
              height: 100,
              width: 30,
              color: Colors.blueAccent,
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Text(
              'Helooooo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
  }
}
