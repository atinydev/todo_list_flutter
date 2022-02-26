import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/providers/tasks_provider.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TasksProvider(),
        ),
      ],
      child: const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDoList",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRoute,
      routes: AppRoutes.getAppRoutes,
      theme: AppTheme.lightTheme,
    );
  }
}
