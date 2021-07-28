import 'package:flutter/cupertino.dart';

class SingleText {
  final String id;
  final String imageUrl;
  final String title;
  final String subtitle;
  final String time;
  final int unreadMessages;

  const SingleText(
      {@required this.id,
      @required this.imageUrl,
      @required this.subtitle,
      @required this.title,
      @required this.time,
      @required this.unreadMessages});
}
