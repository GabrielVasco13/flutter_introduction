import 'package:flutter/material.dart';
import 'package:flutter_introduction/screen/Widgets/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({super.key, required this.child}) : super(child: child);

  final Widget child;

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/flutter.png', 3),
    Task('Durmir', 'assets/images/durmindo.jpg', 5),
    Task('Agredir uns mendigo', 'assets/images/agressao.webp', 1),
    Task('beber agua', 'assets/images/agua.jpg', 2),
    Task('Ler', 'assets/images/livro.jpg', 5),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
