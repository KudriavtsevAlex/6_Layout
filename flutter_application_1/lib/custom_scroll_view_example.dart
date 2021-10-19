import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils.dart';

class CustomScrollViewExample extends StatefulWidget {
  const CustomScrollViewExample({Key? key}) : super(key: key);

  @override
  _CustomScrollViewExampleState createState() =>
      _CustomScrollViewExampleState();
}

class _CustomScrollViewExampleState extends State<CustomScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            // SliverList(
            //   delegate: SliverChildListDelegate(
            //     [
            //       for (var item in fakeData(20)) item,
            //     ],
            //   ),
            // ),

            // SliverGrid.count(
            //   crossAxisCount: 2,
            //   children: [
            //     for (var item in fakeData(200)) item,
            //   ],
            // ),
            // SliverGrid.extent(
            //   maxCrossAxisExtent: 140,
            //   children: [
            //     for (var item in fakeData(20)) item,
            //   ],
            // ),
            // CupertinoSliverNavigationBar(
            //   largeTitle: Text('CupertinoSliverNavigationBar'),
            // ),
            // SliverGrid.extent(
            //   maxCrossAxisExtent: 140,
            //   children: [
            //     for (var item in fakeData(20)) item,
            //   ],
            // ),
            // SliverAppBar(
            //   expandedHeight: 140,
            //   floating: false,
            //   pinned: true,
            //   flexibleSpace: FlexibleSpaceBar(
            //     centerTitle: true,
            //     title: const Text(
            //       'Collapsing ToolBar',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 16,
            //       ),
            //     ),
            //     background: Image.network(
            //       'https://picsum.photos/500/800',
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            // SliverGrid.extent(
            //   maxCrossAxisExtent: 140,
            //   children: [
            //     for (var item in fakeData(20)) item,
            //   ],
            // ),
            // SliverToBoxAdapter(
            //   child: Container(
            //     child: Text('sdfsdfsdfdf'),
            //   ),
            // ),
            // SliverFillRemaining(
            //   child: Container(
            //     child: Center(child: Text('ksjhdfkjhfgkhflkgh')),
            //     color: Colors.black26,
            //   ),
            // ),
            // SliverFillRemaining(
            //   child: Container(
            //     child: Center(child: Text('ksjhdfkjhfgkhflkgh')),
            //     color: Colors.red,
            //   ),
            // ),
            SliverLayoutBuilder(
              builder: (context, constraints) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Column(
                      children: [
                        Text('ksdhnkfglmkjsg'),
                        Text('${constraints.viewportMainAxisExtent}'),
                        Text('${constraints.crossAxisExtent}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
