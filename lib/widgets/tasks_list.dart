import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        ListTile(
          title: Text('Todo 2'),
          trailing: Checkbox(value: false, onChanged: (value) {}),
        ),
        ListTile(
          title: Text('Todo 3'),
          trailing: Checkbox(value: false, onChanged: (value) {}),
        ),
      ],
    );
  }
}
