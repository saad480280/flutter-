import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exploration",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Space Exploration Planner"),
      ),
      body: Column(
        children: [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("You are this far away from exploring the whole universe"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TaskItem(label: "Load rocket with supplies"),
        TaskItem(label: "Launch rocket"),
        TaskItem(label: "Circle the home planet"),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  final String label;

  const TaskItem({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: false,
            onChanged: (bool? value) {
              // Handle checkbox change
            }),
        Text(label),
      ],
    );
  }
}
