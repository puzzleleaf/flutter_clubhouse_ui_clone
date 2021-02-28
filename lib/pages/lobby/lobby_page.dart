import 'package:club_house/models/room.dart';
import 'package:club_house/models/user.dart';
import 'package:club_house/pages/lobby/widgets/room_item.dart';
import 'package:club_house/util/data.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/pages/lobby/widgets/lobby_bottom_sheet.dart';
import 'package:club_house/pages/lobby/widgets/schedule_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(
            bottom: 80,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              buildScheduleCard(),
              for (var i = 0, len = rooms.length; i < len; i++)
                buildRoomCard(Room.fromJson({
                  ...rooms[i],
                  'users': List.generate(
                    rooms[i]['users'].length,
                    (index) => User.fromJson(
                      rooms[i]['users'][index],
                    ),
                  ),
                })),
            ],
          ),
        ),
        buildStartRoomButton(context),
      ],
    );
  }

  Widget buildStartRoomButton(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(bottom: 20),
      child: RoundButton(
        onPressed: () {
          showBottomSheet(context);
        },
        disabledColor: Style.ButtonColor.withOpacity(0.3),
        color: Style.AccentGreen,
        text: '+ Start a room',
      ),
    );
  }

  showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      builder: (context) {
        return Wrap(
          children: [
            LobbyBottomSheet(),
          ],
        );
      },
    );
  }

  Widget buildRoomCard(Room room) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: RoomItem(
        room: room,
      ),
    );
  }

  Widget buildScheduleCard() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Style.AccentSand,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          for (var i = 0, len = schedules.length; i < len; i++)
            ScheduleItem(
              time: schedules[i]['time'],
              text: schedules[i]['text'],
            ),
        ],
      ),
    );
  }
}
