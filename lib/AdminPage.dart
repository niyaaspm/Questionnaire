import 'package:flutter/material.dart';
import 'package:quiz/AddQuestion.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddQuestions(),
                    ));
              },
              child: Text("Add Questions"),
            ),
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {},
              child: Text("View Questions"),
            ),
            MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {},
              child: Text("Delete Questions"),
            )
          ],
        ),
      ),
    );
  }
}
