import 'package:club_house/models/user.dart';

class Room {
  final String title;
  final List<User> users;
  final int userCount;
  final int chatCount;

  Room({
    this.title,
    this.userCount,
    this.chatCount,
    this.users,
  });

  factory Room.fromJson(json) {
    return Room(
      title: json['title'],
      users: json['users'],
      userCount: json['userCount'],
      chatCount: json['chatCount'],
    );
  }
}
