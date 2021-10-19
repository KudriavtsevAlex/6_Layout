import 'package:flutter/material.dart';

class GestureExample extends StatefulWidget {
  const GestureExample({Key? key}) : super(key: key);

  @override
  _GestureExampleState createState() => _GestureExampleState();
}

class _GestureExampleState extends State<GestureExample> {
  // List data = List.generate(20, (index) => {
  //   return Card(
  //     color: Colors.green[100],
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Padding(
  //           padding: EdgeInsets.all(20),
  //           child: Text(index.toString(),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // });
  double trans = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // GestureDetector(
            //   onHorizontalDragUpdate: (DragUpdateDetails value) {
            //     setState(() {
            //       trans = value.globalPosition.dy;
            //     });
            //   },
            //   child: Container(
            //     height: 400,
            //     color: Colors.amberAccent,
            //   ),
            // ),
            // Container(
            //   transform: Matrix4.translationValues(0, trans, 0),
            //   height: 100,
            //   color: Colors.red,
            // ),
            GestureDetector(
              onTap: () {
                print('TAP');
              },
              child: Text('kjsdhfjkhaskjfgaskbg'),
            )
          ],
        ),
      ),
    );
  }
}
