import 'dart:async';
import 'package:flutter/material.dart';

StreamController<int> selectedIndex = StreamController.broadcast();

Widget rail() {
  return Container(
    child: LayoutBuilder(
      builder: (context, constraint) {
        return StreamBuilder(
            initialData: 0,
            stream: selectedIndex.stream,
            builder: (_, AsyncSnapshot snapshot) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: NavigationRail(
                      selectedIndex: snapshot.data,
                      onDestinationSelected: (int index) {
                        selectedIndex.add(index);
                      },
                      labelType: NavigationRailLabelType.selected,
                      destinations: [
                        NavigationRailDestination(
                          icon: Icon(Icons.edit_outlined),
                          selectedIcon: Icon(Icons.edit),
                          label: Text('Edit'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.code_outlined),
                          selectedIcon: Icon(Icons.code),
                          label: Text('Code'),
                        ),
                        NavigationRailDestination(
                          icon: Icon(Icons.book_outlined),
                          selectedIcon: Icon(Icons.book),
                          label: Text('Learn'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
    ),
  );
}
