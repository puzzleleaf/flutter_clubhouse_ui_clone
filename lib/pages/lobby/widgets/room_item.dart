import 'package:club_house/models/room.dart';
import 'package:club_house/widgets/round_image.dart';
import 'package:flutter/material.dart';

class RoomItem extends StatelessWidget {
  final Room room;

  const RoomItem({Key key, this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            room.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  RoundImage(
                    margin: EdgeInsets.only(top: 15, left: 25),
                    path: room.users[0].profileImage,
                  ),
                  RoundImage(
                    path: room.users[1].profileImage,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0, len = room.users.length; i < len; i++)
                    Text(
                      room.users[i].name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '${room.userCount}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.supervisor_account,
                        color: Colors.grey,
                        size: 14,
                      ),
                      Text(
                        '  /  ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        '${room.chatCount}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey,
                        size: 14,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
