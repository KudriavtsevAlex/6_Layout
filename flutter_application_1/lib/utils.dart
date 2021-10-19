import 'package:flutter/material.dart';

final fakeData = (int count, [bool showPrint = false]) => List.generate(
      count,
      (i) {
        if (showPrint) print(i);
        return Card(
          color: Colors.blue[100],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: ListTile(
            title: Text('$i'),
          ),
        );
      },
    );
