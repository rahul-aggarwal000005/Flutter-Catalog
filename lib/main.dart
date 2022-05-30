import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Catalog",
        // debugShowCheckedModeBanner: false,
        // home: HomePage(),
        // theme: ThemeData(
        // fontFamily: GoogleFonts.lato().fontFamily,
        // ),
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          primarySwatch: Colors.red,
          // brightness: Brightness.dark,
        ),
        initialRoute: "/login",
        routes: {
          "/": (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
        });
  }
}
