import 'package:flutter/material.dart';

class KeepAliveExample extends StatefulWidget {
  const KeepAliveExample({Key? key}) : super(key: key);

  @override
  _KeepAliveExampleState createState() => _KeepAliveExampleState();
}

class _KeepAliveExampleState extends State<KeepAliveExample> {
  List<Widget> data = List.generate(100, (index) {
    return SimpleCard(index: index.toString());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView KeepAlive'),
      ),
      body: ListView(
        children: [
          ...data.map((item) => item).toList(),
        ],
      ),
    );
  }
}

class SimpleCard extends StatefulWidget {
  final String index;

  const SimpleCard({Key? key, required this.index}) : super(key: key);

  @override
  _SimpleCardState createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard>
    with AutomaticKeepAliveClientMixin {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    print('init ${widget.index}');
  }

  @override
  void dispose() {
    super.dispose();
    print('dospose ${widget.index}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: ListTile(
          trailing: Icon(
            Icons.favorite,
            color: isFavorite ? Colors.red : Colors.black45,
          ),
          title: Text(widget.index),
          onTap: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
