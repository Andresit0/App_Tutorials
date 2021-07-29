String reorderable = '''
import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';

Widget reorderableWidget(Widget widget) {
  return ReorderableWidget(
    reorderable: true,
    key: ValueKey(1),
    child: Container(
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerLeft,
        child: widget,
      ),
    ),
  );
}

Widget showReorderableWidgetList(List<Widget> rows) {
  void onReorder(int oldIndex, int newIndex) {
    Widget row = rows.removeAt(oldIndex);
    rows.insert(newIndex, row);
  }

  return ReorderableColumn(
    //header: Text('THIS IS THE HEADER ROW'),
    //footer: Text('THIS IS THE FOOTER ROW'),
    crossAxisAlignment: CrossAxisAlignment.start,
    children: rows,
    onReorder: onReorder,
    onNoReorder: (int index) {
      //this callback is optional
      debugPrint(
          '\${DateTime.now().toString().substring(5, 22)} reorder cancelled. index:\$index');
    },
  );
}
''';
