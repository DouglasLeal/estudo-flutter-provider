import 'package:estudo_provider/data/task_data.dart';
import 'package:estudo_provider/screens/form_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tarefas")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => FormScreen()));
        },
        child: Icon(Icons.add),
      ),
      body: Consumer<TaskData>(
        builder: (context, taskData, child){
          return ListView.builder(
              itemCount: taskData.tasks.length,
              itemBuilder: (context, index){
                return Text(taskData.tasks[index]);
              }
          );
        },
      )
    );
  }
}
