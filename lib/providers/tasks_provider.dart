import 'package:flutter/material.dart';

import '../models/models.dart';

class TasksProvider extends ChangeNotifier {
  var tasks = <Task>[];

  var newTask = '';

  void checkTask(bool isChecked, int index) {
    tasks[index].isChecked = isChecked;
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  int tasksNotCompleted() {
    return tasks.where((task) => !task.isChecked).length;
  }

  void addTask() {
    tasks.add(
      Task(text: newTask, isChecked: false),
    );
    newTask = '';
    notifyListeners();
  }
}
