import 'package:flutter/material.dart';

import '../models/models.dart';
import '../providers/providers.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.tasksProvider,
  }) : super(key: key);

  final TasksProvider tasksProvider;

  @override
  Widget build(BuildContext context) {
    final tasks = tasksProvider.tasks;
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return Dismissible(
          background: Container(
            color: Colors.red,
          ),
          key: UniqueKey(),
          onDismissed: (direction) {
            tasksProvider.deleteTask(index);
          },
          child: _TaskTile(
            task: task,
            onChanged: (value) {
              tasksProvider.checkTask(task);
            },
          ),
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
      title: Text(
        task.text,
        style: task.isChecked
            ? const TextStyle(
                decoration: TextDecoration.lineThrough,
              )
            : null,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      activeColor: Theme.of(context).primaryColor,
      onChanged: onChanged,
    );
  }
}
