import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

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
        child: Text("$days days of $courseName"),
      ),
      drawer: MyDrawer(),
    );
  }
}
