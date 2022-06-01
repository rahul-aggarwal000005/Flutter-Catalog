import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  void moveToHomeScreen(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
      ),
      body: Material(
          color: Colors.white,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 28.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 16.0,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter the email address!";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: "Enter username",
                            labelText: "Username",
                          ),
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          }),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter the password!";
                          } else if (value.length < 6) {
                            return "Please enter the password with atleast 6 characters";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () async {
                          moveToHomeScreen(context);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 45.0,
                          width: changeButton ? 40 : 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: changeButton ? Colors.green : Colors.purple,
                            shape: changeButton
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                          ),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
