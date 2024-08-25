import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/task_cubit.dart';
import '../../cubits/task_state.dart';
import 'task_form_screen.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de tareas'),
      ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          if (state is TaskLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TaskSuccess) {
            return ListView.builder(
              itemCount: state.task.length,
              itemBuilder: (context, index) {
                final task = state.task[index];
                return ListTile(
                  title: Text(task.title),
                  subtitle: Text(task.description),
                  trailing: Icon(
                    task.isCompleted ? Icons.check_circle : Icons.circle,
                    color: task.isCompleted ? Colors.green : Colors.grey
                  ),
                  onTap: () {

                  },
                );
              },
            );
          } else if (state is TaskError) {
            return Center(child: Text('Fallo al obtener las tareas: ${state.message}'));
          } else {
            return const Center(child: Text('No hay registro de tareas'));
          }
        }
      ),

    );
  }
}