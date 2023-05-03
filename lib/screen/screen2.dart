// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_introduction/data/task_inherited.dart';
import 'package:flutter_introduction/screen/Widgets/task.dart';
import 'package:flutter_introduction/screen/form_screen.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          color: Colors.transparent,
        ),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: TaskInherited.of(context)!.taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
