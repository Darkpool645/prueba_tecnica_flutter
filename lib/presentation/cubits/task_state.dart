import 'package:equatable/equatable.dart';
import '../../data/models/task_model.dart';

abstract class TaskState extends Equatable{
  @override
  List<Object?> get props => [];
}

class TaskInitial extends TaskState{}

class TaskLoading extends TaskState{}

class TaskSuccess extends TaskState{
  final List<Task> task;
  TaskSuccess({ required this.task});

  @override
  List<Object?> get props => [task];
}

class TaskError extends TaskState{
  final String message;
  TaskError({ required this.message });

  @override
  List<Object?> get props => [message];
}