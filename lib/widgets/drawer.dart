import 'package:flutter/material.dart';
import 'package:shopapp/screens/home_page.dart';
import 'package:shopapp/screens/login_page.dart';

class DrawerHome extends StatefulWidget {
  
  DrawerHome();
  @override
  _DrawerHomeState createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: DrawerHeader(
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueGrey.shade900,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 12,
                    ),
                    Text(
                      " Welcome Emre ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blueGrey.shade500),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey.shade500),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePge()));
              print('test1');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.category, color: Colors.blueGrey.shade500),
            title: Text(
              'Categories',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey.shade500),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print('test2');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.email, color: Colors.blueGrey.shade500),
            title: Text(
              'Contact',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey.shade500),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print('test3');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blueGrey.shade500),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey.shade500),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print('test4');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.power_settings_new, color: Colors.black87),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
              print('test4');
            },
          ),
          Divider(),
          Center(
            child: Text(
              'urBasics version 1.00',
              style: TextStyle(
                  color: Colors.grey, backgroundColor: Colors.grey.shade200),
            ),
          ),
        ],
      ),
    );
  }
}
