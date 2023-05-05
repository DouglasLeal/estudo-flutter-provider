import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  FormScreen({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nova tarefa")),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              label: Text("Nova Tarefa")
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Criar"))
        ],
      ),
    );
  }
}
