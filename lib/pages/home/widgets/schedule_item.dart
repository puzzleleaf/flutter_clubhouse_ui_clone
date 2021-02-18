import 'package:club_house/constants/util.dart';
import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  final String time;
  final String text;

  const ScheduleItem({Key key, this.time, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 75,
                alignment: Alignment.centerRight,
                child: Text(
                  time,
                  style: TextStyle(
                    color: Util.DarkBrown,
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
                          color: Util.AccentGreen,
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
          ),
        ],
      ),
    );
  }
}
