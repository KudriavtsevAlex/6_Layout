import 'package:flutter/material.dart';
import 'package:flutter_application_1/aspect_example.dart';
import 'package:flutter_application_1/custom_scroll_view_example.dart';
import 'package:flutter_application_1/example_list_grid.dart';
import 'package:flutter_application_1/intrinsic_example.dart';
import 'package:flutter_application_1/kepp_alive_example.dart';
import 'package:flutter_application_1/page_view_example.dart';
import 'package:flutter_application_1/single_child_scroll_view.dart';
import 'package:flutter_application_1/stack_example.dart';

import 'gesture_example.dart';
import 'layout_builder_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: SingleChildScrollViewExample(),
      // home: ListGridExample(),
      // home: KeepAliveExample(),
      // home: CustomScrollViewExample(),
      // home: LayoutBuilderExample(),
      // home: StackExample(),
      // home: AspectExample(),
      // home: IntrinsicExample(),
      // home: GestureExample(),
      home: PageViewExample(),
    );
  }
}
