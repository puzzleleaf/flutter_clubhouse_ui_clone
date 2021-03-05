import 'dart:math';
import 'package:club_house/models/room.dart';
import 'package:club_house/models/user.dart';

Random random = Random();

String dummyText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit? ❤🏠🏠';

// User
List names = [
  'American Bobtail',
  'British Shorthair',
  'Cornish Rex',
  'Egyptian Mau',
  'Devon Rex',
  'Exotic Shorthair',
  'Japanese Bobtail',
  'Maine Coon',
  'Scottish Fold',
  'Selkirk Rex',
  'American Bobtail2',
  'British Shorthair2',
  'Cornish Rex2',
  'Egyptian Mau2',
  'Devon Rex2',
  'Exotic Shorthair2',
  'Japanese Bobtail2',
  'Maine Coon2',
  'Scottish Fold2',
  'Selkirk Rex2',
];

List userData = List.generate(
  20,
  (index) => {
    'name': names[index],
    'username': '@${names[index].toString().split(' ')[0].toLowerCase()}',
    'profileImage': 'assets/images/cat${index % 10 + 1}.jpg',
    'followers': '1k',
    'following': '1',
    'lastAccessTime': '${index + 10}m',
    'isNewUser': random.nextBool(),
  },
);

// MyProfile
dynamic profileData = {
  'name': 'Golden Retriever',
  'username': '@dog',
  'profileImage': 'assets/images/profile.jpg',
  'followers': '1k',
  'following': '1',
  'lastAccessTime': '0m',
  'isNewUser': random.nextBool(),
};

// Room
List roomData = List.generate(
  10,
  (index) => {
    'title': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit? ❤🏠🏠',
    "users": List.generate(20, (index) => User.fromJson(userData[index]))
      ..shuffle(),
    'speakerCount': 4,
  },
);

List<Room> rooms = List.generate(
  10,
  (index) => Room.fromJson(roomData[index]),
);

List lobbyBottomSheets = [
  {
    'image': 'assets/images/open.png',
    'text': 'Open',
    'selectedMessage': 'Start a room open to everyone',
  },
  {
    'image': 'assets/images/social.png',
    'text': 'Social',
    'selectedMessage': 'Start a room with people I follow',
  },
  {
    'image': 'assets/images/closed.png',
    'text': 'Closed',
    'selectedMessage': 'Start a room for people I choose',
  },
];

List<User> users = List.generate(20, (index) => User.fromJson(userData[index]));
User myProfile = User.fromJson(profileData);
