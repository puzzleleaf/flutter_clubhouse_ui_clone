import 'package:club_house/constants/style.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/widgets/round_image.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
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
          for (var i = 0, len = 10; i < len; i++)
            availableChatItem(i),
        ],
      ),
    );
  }

  Widget availableChatItem(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Row(
        children: [
          RoundImage(
            path: 'assets/images/cat${index+1}.jpg',
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
                  'The Cat',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '#I Love Dog',
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
      ),
    );
  }
}
