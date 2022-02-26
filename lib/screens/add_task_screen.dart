import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/theme/theme.dart';

import '../providers/tasks_provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  static const routeName = 'AddTask';

  @override
  Widget build(BuildContext context) {
    final tasksProvider = Provider.of<TasksProvider>(context, listen: false);
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Stack(
        children: [
          Container(
            color: const Color(0xff757575),
          ),
          Container(
            decoration: AppTheme.boxDecoration,
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Add Task',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    if (value != '') {
                      tasksProvider.newTask = value.trim();
                    }
                  },
                  autofocus: true,
                  cursorColor: Theme.of(context).primaryColor,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (tasksProvider.newTask != '') {
                      tasksProvider.addTask();
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Add'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
