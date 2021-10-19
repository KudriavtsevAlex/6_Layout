import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatefulWidget {
  const LayoutBuilderExample({Key? key}) : super(key: key);

  @override
  _LayoutBuilderExampleState createState() => _LayoutBuilderExampleState();
}

class _LayoutBuilderExampleState extends State<LayoutBuilderExample> {
  List<Widget> _data = List.generate(100, (index) {
    return SimpleCard(index: index.toString());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayouBuilder'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Search',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Search2',
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double _width = constraints.constrainWidth();
                return _width > 600
                    ? GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _width > 600 ? 3 : 2,
                          childAspectRatio: _width > 600 ? 2 : 1,
                        ),
                        itemCount: _data.length,
                        itemBuilder: (context, index) => _data[index],
                      )
                    : ListView.builder(
                        itemCount: _data.length,
                        itemBuilder: (context, index) => _data[index],
                      );
              },
            ),
          ),
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

class _SimpleCardState extends State<SimpleCard> {
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
}
