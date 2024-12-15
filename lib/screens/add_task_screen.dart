import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todeey_flutter/models/taskdata.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String taskTitle;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Add Task",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blueAccent,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newTitle) {
              taskTitle = newTitle;
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(taskTitle);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                backgroundColor: Colors.blueAccent),
            child: const Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
