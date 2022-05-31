import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Catalog",
        theme: MyTheme.lightTheme(context),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
        });
  }
}
