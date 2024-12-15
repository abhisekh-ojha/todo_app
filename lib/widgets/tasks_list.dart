import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:todeey_flutter/models/taskdata.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskdata.tasks[index].isDone,
              taskTitle: taskdata.tasks[index].name,
              checkboxNewState: (newState) {
                taskdata.updateTask(taskdata.tasks[index]);
              },
              longPressCall: () {
                taskdata.deleteTask(taskdata.tasks[index]);
              },
            );
          },
          itemCount: taskdata.taskCount,
        );
      },
    );
  }
}
