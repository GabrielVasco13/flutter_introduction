// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_introduction/screen/Widgets/task.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          color: Colors.transparent,
        ),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: (opacidade ? 1 : 0),
        duration: const Duration(milliseconds: 800),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
             Task(
                'Aprender Flutter',
                'assets/images/flutter.png',
                3),
             Task(
                'Durmir',
                'assets/images/durmindo.jpg',
                5),
             Task(
                'Agredir uns mendigo',
                'assets/images/agressao.webp',
                1),
             Task(
                'beber agua',
                'assets/images/agua.jpg',
                2),
             Task(
                'Ler',
                'assets/images/livro.jpg',
                5),
                SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

