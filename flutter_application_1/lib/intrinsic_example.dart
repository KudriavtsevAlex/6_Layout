import 'package:flutter/material.dart';

class IntrinsicExample extends StatefulWidget {
  const IntrinsicExample({Key? key}) : super(key: key);

  @override
  _IntrinsicExampleState createState() => _IntrinsicExampleState();
}

class _IntrinsicExampleState extends State<IntrinsicExample> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: Text('Hi'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Hisdlkfjsafg'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Hsdflkjsdi'),
          ),
        ],
      ),
    );
  }
}
