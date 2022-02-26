import 'package:flutter/material.dart';

import '../models/models.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Tasks.tasks.length,
      itemBuilder: (context, index) {
        final task = Tasks.tasks[index];
        return _TaskTile(
          task: task,
          onChanged: (value) {
            setState(() {
              task.isChecked = value ?? false;
            });
          },
        );
      },
    );
  }
}

class _TaskTile extends StatelessWidget {
  const _TaskTile({
    Key? key,
    required this.task,
    required this.onChanged,
  }) : super(key: key);

  final Task task;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: task.isChecked,
      title: Text(task.text),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 35,
      ),
      activeColor: Colors.lightBlueAccent,
      onChanged: onChanged,
    );
  }
}
