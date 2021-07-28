import 'package:flutter/material.dart';
import './calls_screen.dart';
import './camera_screen.dart';
import './chats_screen.dart';
import './status_screen.dart';

class TabBarScreen extends StatelessWidget {
  final _tabs = [
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      child: Text("CHATS"),
    ),
    Tab(
      child: Text("STATUS"),
    ),
    Tab(
      child: Text("CALLS"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatScren(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message_sharp),
          backgroundColor: Colors.green,
          onPressed: () {},
        ),
      ),
    );
  }
}
