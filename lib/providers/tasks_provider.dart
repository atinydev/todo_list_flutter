import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/models.dart';

class TasksProvider extends ChangeNotifier {
  final _tasks = <Task>[];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  var newTask = '';

  void checkTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  int get tasksNotCompleted {
    return _tasks.where((task) => !task.isChecked).length;
  }

  void addTask() {
    _tasks.add(
      Task(text: newTask),
    );
    newTask = '';
    notifyListeners();
  }
}
