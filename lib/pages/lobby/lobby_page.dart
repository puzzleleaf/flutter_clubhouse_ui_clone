import 'package:club_house/constants/style.dart';
import 'package:club_house/pages/lobby/widgets/room_bottom_sheet.dart';
import 'package:club_house/pages/lobby/widgets/schedule_item.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/widgets/round_image.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatelessWidget {
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
              _buildScheduleCard(),
              _buildRoomCard(),
              _buildRoomCard(),
              _buildRoomCard(),
            ],
          ),
        ),
        Container(
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
        ),
      ],
    );
  }

  void showBottomSheet(BuildContext context) {
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
            RoomBottomSheet(),
          ],
        );
      },
    );
  }

  Widget _buildRoomCard() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: roomItem(),
    );
  }

  Widget _buildScheduleCard() {
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
          ScheduleItem(
            time: "8:00 PM",
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          ),
          ScheduleItem(
            time: "9:00 PM",
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          ),
          ScheduleItem(
            time: "10:00 PM",
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          ),
        ],
      ),
    );
  }

  Widget roomItem() {
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
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit? ❤🏠🏠',
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
                    path: 'assets/images/cat1.jpg',
                  ),
                  RoundImage(
                    path: 'assets/images/cat3.jpg',
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Darian Symone 💬',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Twqwe Qew 💬',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Puzzleleaf 💬',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Fadia 💬',
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
                        '944',
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
                        '11',
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
