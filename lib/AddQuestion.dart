import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddQuestions extends StatefulWidget {
  const AddQuestions({super.key});

  @override
  State<AddQuestions> createState() => _AddQuestionsState();
}

class _AddQuestionsState extends State<AddQuestions> {
  final CollectionReference ques =
      FirebaseFirestore.instance.collection('ques');
  TextEditingController questionn = TextEditingController();
  TextEditingController answer = TextEditingController();
  TextEditingController option1 = TextEditingController();
  TextEditingController option2 = TextEditingController();
  TextEditingController option3 = TextEditingController();
  TextEditingController option4 = TextEditingController();

  void addQues() {
    final data = {
      'question': questionn.text,
      'answer': answer.text,
      'option1': option1.text,
      'option2': option2.text,
      'option3': option3.text,
      'option4': option4.text,
    };
    ques.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Question"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            controller: questionn,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Enter the Question Here"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: answer,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Enter the Answer Here"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: option1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Option 1"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: option2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Option 2"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: option3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Option 3"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: option4,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Option 4"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () {
                addQues();
                Navigator.pop(context);
              },
              child: Text("Add"),
              color: Colors.red,
              minWidth: double.infinity,
            ),
          ),
        ],
      )),
    );
  }
}
