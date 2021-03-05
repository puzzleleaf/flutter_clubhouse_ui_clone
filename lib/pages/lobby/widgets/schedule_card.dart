import 'package:club_house/util/data.dart';
import 'package:club_house/util/style.dart';
import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Style.AccentBrown,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          for (var i = 0, len = 3; i < len; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: buildScheduleItem('0${7 + i}:00 PM', dummyText),
            ),
        ],
      ),
    );
  }

  Widget buildScheduleItem(String time, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 75,
          alignment: Alignment.centerRight,
          child: Text(
            time,
            style: TextStyle(
              color: Style.DarkBrown,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'COMMUNITY CLUB',
                    style: TextStyle(
                      color: Color(0xff807970),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.home,
                    color: Style.AccentGreen,
                    size: 15,
                  ),
                ],
              ),
              Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
