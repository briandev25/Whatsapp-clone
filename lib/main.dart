import 'package:flutter/material.dart';
import './Pages/tabBar_screen.dart';
import './Pages/open_chart_page.dart';
//import 'package:web_socket_channel/io.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp Clone",
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
      ),
      home: TabBarScreen(),
      routes: {
        // '/': (ctx) => TabBarScreen(),
        ChartDetailScreen.routeName: (ctx) => ChartDetailScreen(
            //  channel: new IOWebSocketChannel.connect('ws://echo.websocket.org')
            )
      },
    );
  }
}
