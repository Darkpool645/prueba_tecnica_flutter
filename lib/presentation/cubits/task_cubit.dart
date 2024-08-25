import 'package:flutter_bloc/flutter_bloc.dart';
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
}
