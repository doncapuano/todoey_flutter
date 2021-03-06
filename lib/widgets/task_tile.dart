
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String taskTitle;
  final Function? checkboxCallback;
  final Function? longPressCallback;

  TaskTile({
    this.isChecked,
    required this.taskTitle,
    this.checkboxCallback,
    this.longPressCallback
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback as void Function()?,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.green[900],
        value: isChecked,
        onChanged: checkboxCallback as void Function(bool?)?,
      ),
    );
  }
}
