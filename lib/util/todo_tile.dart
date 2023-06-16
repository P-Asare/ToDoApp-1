import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool complete;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteTask;

  const ToDoTile(
      {super.key,
      required this.taskName,
      required this.complete,
      required this.onChanged,
      required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteTask,
              backgroundColor: Colors.red,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(15.0),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            children: [
              // check box for task
              Checkbox(
                value: complete,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),

              // Text for task
              complete
                  ? Text(
                      taskName,
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough),
                    )
                  : Text(taskName),
            ],
          ),
        ),
      ),
    );
  }
}
