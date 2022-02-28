import 'package:flutter/material.dart';

import '../models/models.dart';

class TasksProvider extends ChangeNotifier {
  var tasks = <Task>[];

  var newTask = '';

  void checkTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  int get tasksNotCompleted {
    return tasks.where((task) => !task.isChecked).length;
  }

  void addTask() {
    tasks.add(
      Task(text: newTask),
    );
    newTask = '';
    notifyListeners();
  }
}
