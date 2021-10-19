import 'package:flutter/material.dart';

class ListGridExample extends StatefulWidget {
  const ListGridExample({Key? key}) : super(key: key);

  @override
  _ListGridExampleState createState() => _ListGridExampleState();
}

class _ListGridExampleState extends State<ListGridExample> {
  List<Widget> data = List.generate(100, (index) {
    return SimpleCard(index: index.toString());
  });

  ScrollController controller = ScrollController(initialScrollOffset: 0);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      //print('MAX SCROLL EXTEND ${controller.position.maxScrollExtent}');
      //print(controller.offset.floor());
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView / GridView'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 12),
              ElevatedButton(
                onPressed: () {
                  controller.animateTo(500,
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.easeInOut);
                },
                child: Text('Animate to'),
              ),
              SizedBox(width: 12),
              ElevatedButton(
                onPressed: () {
                  controller.jumpTo(2000);
                },
                child: Text('jump to'),
              ),
            ],
          ),
          // Expanded(
          //   child: ListView(
          //     controller: controller,
          //     children: data.map((item) => item).toList(),
          //   ),
          // ),
          // Container(
          //   height: 200,
          //   child: ListView(
          //     controller: controller,
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       ...data.map(
          //         (item) => Container(
          //           width: 100,
          //           child: item,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Expanded(
          //   child: ListView.builder(
          //     controller: controller,
          //     itemCount: data.length,
          //     itemBuilder: (context, index) => data[index],
          //   ),
          // ),
          Expanded(
            child: ListWheelScrollView(
              offAxisFraction: -2,
              controller: controller,
              itemExtent: 50,
              children: [
                ...data.map((item) => item).toList(),
              ],
            ),
          )
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
