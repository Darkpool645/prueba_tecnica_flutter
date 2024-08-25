import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/task_model.dart';
import '../../data/repositories/task_repository.dart';
import 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  final TaskRepository taskRepository;

  TaskCubit({required this.taskRepository}) : super(TaskInitial());

  void fetchTasks() {
    try {
      emit(TaskLoading());
      final tasks = taskRepository.getAllTasks();
      emit(TaskSuccess(task: tasks));
    } catch (e) {
      emit(TaskError(message: 'Failed to fetch tasks'));
    }
  }

  void toggleTaskCompletion(Task task){
    try{
      final updatedTask = Task(
        id: task.id,
        title: task.title,
        description: task.description,
        isCompleted: !task.isCompleted
      );
      taskRepository.updateTask(updatedTask);
      fetchTasks();
    }catch (e) {
      emit(TaskError(message: e.toString()));
    }
  }

  void updateTask(Task task) {
    try{
      final updatedTask = Task(
        id: task.id,
        title: task.title,
        description: task.description,
        isCompleted: task.isCompleted
      );
      taskRepository.updateTask(updatedTask);
      fetchTasks();
    } catch (e) {
      emit(TaskError(message: e.toString()));
    }
  }

  void deleteTask(int id) {
    try{
      taskRepository.deleteTask(id);
      fetchTasks();
    } catch (e) {
      emit(TaskError(message: e.toString()));
    }
  }
}
