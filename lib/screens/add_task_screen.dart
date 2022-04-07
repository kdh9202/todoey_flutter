import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {
  //
  // final Function addTaskCallback;
  //
  // AddTaskScreen(this.addTaskCallback);

  //final textFieldController =  TextEditingController();
  late String inputText;

  //AddTaskScreen(String inputText);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              //controller: textFieldController,
              onChanged: (newText){
                inputText = newText;
              },
            ),
            ElevatedButton(
              onPressed: () {
                // addTaskCallback(inputText);
                //final task = Task(name: inputText);
                Provider.of<TaskData>(context, listen: false).addTask(inputText);
                Navigator.pop(context);
              },
              child: const Text('Add'),
              style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
            )
          ],
        ),
      ),
    );
  }
}
