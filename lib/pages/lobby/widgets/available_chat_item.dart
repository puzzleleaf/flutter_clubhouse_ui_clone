import 'package:club_house/models/user.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/widgets/round_image.dart';
import 'package:flutter/material.dart';

class AvailableChatItem extends StatelessWidget {
  final User user;

  const AvailableChatItem({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundImage(
          path: user.profileImage,
          borderRadius: 15,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '#${user.message}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Style.DarkBrown,
                ),
              )
            ],
          ),
        ),
        RoundButton(
          color: Style.LightGreen,
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(
            maxHeight: 25,
          ),
          onPressed: () {},
          child: Row(
            children: [
              Text(
                '+ Room',
                style: TextStyle(
                  color: Style.AccentGreen,
                  decoration: TextDecoration.underline,
                ),
              ),
              Icon(
                Icons.home,
                color: Style.AccentGreen,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
