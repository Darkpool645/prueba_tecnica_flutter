import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/repositories/task_repository.dart';
import 'presentation/cubits/task_cubit.dart';
import 'presentation/screens/task/task_list_screen.dart';

void main() {
  final taskRepository = TaskRepository();

  runApp(
    BlocProvider(
      create: (context) => TaskCubit(taskRepository: taskRepository)..fetchTasks(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget{
  const MyApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de tareas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TaskListScreen(),
    );
  }
}