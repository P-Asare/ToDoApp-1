import 'package:flutter/material.dart';
import 'button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(),
                hintText: 'Add Task',
              ),
            ),
            // Save and concel buttons

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                Button(
                  name: 'Save',
                  onPressed: onSave,
                ),

                const SizedBox(
                  width: 10,
                ),

                // cancel button
                Button(
                  name: 'Cancel',
                  onPressed: onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
