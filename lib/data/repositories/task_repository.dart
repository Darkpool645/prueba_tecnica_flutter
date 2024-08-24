import '../models/task_model.dart';

class TaskRepository {
  // Para este caso vamos a simular una base de datos desde la memoria
  final List<Task> _tasks = [];

  List<Task> getAllTasks() {
    return _tasks;
  }

  void addTask(Task task) {
    _tasks.add(task);
  }

  void updateTask(Task updatedTask) {
    final index = _tasks.indexWhere((task) => task.id == updatedTask.id);
    if (index != -1) {
      _tasks[index] = updatedTask;
    }
  }

  void deleteTask(int id) {
    _tasks.removeWhere((task) => task.id == id);
  }
}