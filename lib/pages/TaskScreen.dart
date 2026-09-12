import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});
    @override
  State<TaskScreen> createState() => _TaskScreen();
}

class _TaskScreen extends State<TaskScreen>{
  final TextEditingController nameController = TextEditingController();
  String greetingMessage = '';
  void dispose(){
    nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Greeting App'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
            ) ,
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){setState(() {
              greetingMessage = 'hello ${nameController.text}!';
            });}, child: Text('Say Hello'),),
            SizedBox(height: 20),
              Text(
                greetingMessage,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
    
}

