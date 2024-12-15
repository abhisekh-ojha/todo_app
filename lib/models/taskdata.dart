import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todeey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Bread"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask (String taskName){
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}