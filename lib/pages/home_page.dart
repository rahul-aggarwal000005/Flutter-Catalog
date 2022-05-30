import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String courseName = 'Flutter Tutorial';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("$days days of $courseName"),
        ),
      ),
    );
  }
}
