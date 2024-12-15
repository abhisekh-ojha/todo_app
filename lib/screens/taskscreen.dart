import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todeey_flutter/models/taskdata.dart';
import 'package:todeey_flutter/widgets/tasks_list.dart';
import 'add_task_screen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    int numberOfTask = Provider.of<TaskData>(context).tasks.length;

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.menu,
                    size: 30.0,
                    color: Colors.blueAccent,
                  ),
                ),
                const Text(
                  "Todoey",
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "${numberOfTask} tasks",
                  style: const TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
