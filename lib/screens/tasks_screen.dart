import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
        onPressed: (){},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(Icons.list, color: Colors.lightBlueAccent,size: 30,),
                ),
                SizedBox(height: 10,),
                Text('Todoey', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700),),
                Text('12 Tasks', style: TextStyle(color: Colors.white, fontSize: 18),)
              ],
            ),
          ),
          Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration : const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Todo 1'),
                      trailing: Checkbox(value: false, onChanged: (value){}),
                    ),
                    ListTile(
                      title: Text('Todo 2'),
                      trailing: Checkbox(value: false, onChanged: (value){}),
                    ),
                    ListTile(
                      title: Text('Todo 3'),
                      trailing: Checkbox(value: false, onChanged: (value){}),
                    ),

                  ],
                ),
              )
          )
        ],
      ),

    );
  }
}