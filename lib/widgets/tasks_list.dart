// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TasksTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxChange: (newValue) {
              setState(() {
                widget.tasks[index].doneChange();
              });
            },
          );
        });
    /* return ListView(
      children: [
        TasksTile(
          taskTitle: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TasksTile(
          taskTitle: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TasksTile(
          taskTitle: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
        TasksTile(
          taskTitle: tasks[3].name,
          isChecked: tasks[3 ].isDone,
        ),
      ],
    ); */
  }
}
