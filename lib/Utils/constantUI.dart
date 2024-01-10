import 'package:flutter/material.dart';

var commonBackground = Colors.orange.shade200;

AppBar commonAppbar (String title){
  return AppBar(
    backgroundColor: Colors.orange.shade900,
    title: Text(title),
    centerTitle: true,
  );
}

var commonDrawer = Drawer(
  backgroundColor: Colors.orange.shade200,
  child: const Column(
    children: [
      DrawerHeader(
          child: Icon(
        Icons.flutter_dash,
        size: 50.0,
      )),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Dashboard'),
      ),
      ListTile(
        leading: Icon(Icons.book),
        title: Text('Courses'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Profile'),
      ),
    ],
  ),
);
