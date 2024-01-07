import 'package:flutter/material.dart';
import 'package:quiz/AdminPage.dart';
import 'package:quiz/StudentPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Questionnaire App"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: MaterialButton(
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StudentHome(),
                    ));
              },
              child: const Text("Student Login"),
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdminPage(),
                    ));
              },
              child: const Text("Admin Login"),
            ),
          )
        ],
      )),
    );
  }
}
