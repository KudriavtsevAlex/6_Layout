import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  final PageController _pageController = PageController(
    viewportFraction: 0.5,
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View Example'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {},
        children: [
          Container(
            color: Colors.orange,
            child: Center(
              child: Text('Page #1'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('Page #2'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Page #3'),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text('Page #4'),
            ),
          ),
        ],
      ),
    );
  }
}
