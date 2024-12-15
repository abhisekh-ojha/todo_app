import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todeey_flutter/models/taskdata.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  dynamic checkboxNewState;
  dynamic longPressCall;

  TaskTile({required this.isChecked, required this.taskTitle, this.checkboxNewState, this.longPressCall});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCall,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        onChanged: checkboxNewState,
      ),
    );
  }
}
