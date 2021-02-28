import 'package:club_house/models/user.dart';
import 'package:club_house/pages/lobby/widgets/available_chat_item.dart';
import 'package:club_house/util/data.dart';
import 'package:club_house/util/style.dart';
import 'package:flutter/material.dart';

class InvitationPage extends StatelessWidget {
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
          Row(
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
          ),
          buildAvailableChat(),
        ],
      ),
    );
  }

  Widget buildAvailableChat() {
    return Column(
      children: [
        for (var i = 0, len = users.length; i < len; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: AvailableChatItem(
              user: User.fromJson(users[i]),
            ),
          ),
      ],
    );
  }
}
