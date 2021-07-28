import 'package:flutter/material.dart';
import '../DUMMY_DATA.dart';
import './open_chart_page.dart';

class ChatScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (ctx, index) {
        return Divider();
      },
      itemBuilder: (ctx, index) {
        return Padding(
          padding: EdgeInsets.all(1.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(DUMMY_TEXTS[index].imageUrl),
            ),
            title: Text(
              DUMMY_TEXTS[index].title,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              DUMMY_TEXTS[index].subtitle,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(DUMMY_TEXTS[index].time),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    DUMMY_TEXTS[index].unreadMessages.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(ChartDetailScreen.routeName,
                  arguments: DUMMY_TEXTS[index].id);
            },
          ),
        );
      },
      itemCount: DUMMY_TEXTS.length,
    );
  }
}
