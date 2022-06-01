import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final url = 'https://randomuser.me/api/portraits/men/75.jpg';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              margin: const EdgeInsets.all(0),
              accountName: const Text("Rahul Aggarwal"),
              accountEmail: const Text("rahul.aggarwal000005@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(url),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue[700],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue[700],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.mail,
              color: Colors.blue,
            ),
            title: Text(
              "Emails",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue[700],
              ),
            ),
          )
        ],
      ),
    );
  }
}
