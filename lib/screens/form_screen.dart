import 'package:estudo_provider/data/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormScreen extends StatelessWidget {
  FormScreen({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nova tarefa")),
      body: Consumer<TaskData>(
        builder: (context, taskData, child) {
          return Column(
          children: [
            TextField(
            controller: controller,
              decoration: InputDecoration(
                label: Text("Nova Tarefa")
              ),
            ),
            ElevatedButton(onPressed: (){
              taskData.addTask(controller.text);
              Navigator.pop(context);
            }, child: Text("Criar"))
          ],
          );
        }
    ));
  }
}
