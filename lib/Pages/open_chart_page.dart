import 'package:flutter/material.dart';
//import 'package:web_socket_channel/web_socket_channel.dart';
import '../DUMMY_DATA.dart';

class ChartDetailScreen extends StatefulWidget {
  static const routeName = 'chat-detail';
  // final WebSocketChannel channel;
  // ChartDetailScreen({@required this.channel});

  @override
  _ChartDetailScreenState createState() => _ChartDetailScreenState();
}

class _ChartDetailScreenState extends State<ChartDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedChatId = ModalRoute.of(context).settings.arguments as String;
    final selectedChat =
        DUMMY_TEXTS.firstWhere((chat) => chat.id == selectedChatId);
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 229, 221, 1),
      appBar: AppBar(
        title: Expanded(
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(selectedChat.imageUrl),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    selectedChat.title,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Online",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          IconButton(icon: Icon(Icons.menu_outlined), onPressed: () {})
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Type a message",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        suffixIcon: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween, // added line
                          mainAxisSize: MainAxisSize.min, // added line
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.attach_file),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.camera_alt),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: IconButton(icon: Icon(Icons.mic), onPressed: () {}),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
