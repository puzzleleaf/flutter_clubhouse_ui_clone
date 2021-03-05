import 'package:club_house/models/room.dart';
import 'package:club_house/pages/home/profile_page.dart';
import 'package:club_house/pages/lobby/widgets/follower_item.dart';
import 'package:club_house/pages/room/room_page.dart';
import 'package:club_house/util/data.dart';
import 'package:club_house/util/history.dart';
import 'package:club_house/util/style.dart';
import 'package:flutter/material.dart';

class FollowerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAvailableChatTitle(),
          buildAvailableChatList(context),
        ],
      ),
    );
  }

  Widget buildAvailableChatTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'AVAILABLE TO CHAT',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Style.DarkBrown,
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: Style.DarkBrown,
          ),
        ),
      ],
    );
  }

  Widget buildAvailableChatList(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: users.length,
      itemBuilder: (lc, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: FollowerItem(
            user: users[index],
            onProfileTap: () {
              History.pushPage(
                context,
                ProfilePage(
                  profile: users[index],
                ),
              );
            },
            onRoomButtonTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return RoomPage(
                    room: Room(
                      title: '${myProfile.name}\'s Room',
                      users: [myProfile, users[index]],
                      speakerCount: 1,
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
