import 'dart:math';

Random random = Random();

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
];

List users = List.generate(
  10,
  (index) => {
    'name': names[index],
    'username': '@${names[index].toString().split(' ')[0].toLowerCase()}',
    'profileImage': 'assets/images/cat${index + 1}.jpg',
    'message': 'I Love Dog'
  },
);

List rooms = List.generate(
  10,
  (index) => {
    'title': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit? ❤🏠🏠',
    "users": List.generate(4, (index2) => users[random.nextInt(10)]),
    'userCount': random.nextInt(1000),
    'chatCount': random.nextInt(500),
  },
);

List schedules = List.generate(3, (index) => {
  'time': '${7 + index}:00 PM',
  'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
});

dynamic profile = {
  'nickname': 'Golden Retriever',
  'username': '@dog',
  'followers': '1k',
  'following': '1',
  'image': 'assets/images/profile.jpg',
};

List lobbyBottomSheets = [
  {
    'image':
    'https://images.unsplash.com/photo-1518288774672-b94e808873ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80',
    'text': 'Open',
    'selectedMessage': 'Start a room open to everyone',
  },
  {
    'image':
    'https://images.unsplash.com/photo-1518288774672-b94e808873ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80',
    'text': 'Social',
    'selectedMessage': 'Start a room with people I follow',
  },
  {
    'image':
    'https://images.unsplash.com/photo-1518288774672-b94e808873ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=678&q=80',
    'text': 'Closed',
    'selectedMessage': 'Start a room for people I choose',
  },
];