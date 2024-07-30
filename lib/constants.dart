import 'package:flutter/material.dart';

var myDefaultBackground = Colors.white;

var myAppBar = AppBar(
  backgroundColor: Colors.grey,
  );

  var myDrawer = Drawer(
    backgroundColor: Colors.white,
    child: Column(
      children: const [
        DrawerHeader(child: Icon(Icons.favorite)),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('D A S H B O A R D'),
          ),
          ListTile(
          leading: Icon(Icons.settings),
          title: Text('S E T T I N G S'),
          ),
          ListTile(
          leading: Icon(Icons.chat),
          title: Text('R E V I E W S'),
          ),
          ListTile(
          leading: Icon(Icons.logout),
          title: Text('L O G O U T'),
          ),
      ],
    ),
  );