import 'file:///D:/development/club_house/lib/widgets/round_image.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final profile;

  const HomeAppBar({Key key, this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: IconButton(
            iconSize: 30,
            splashRadius: 20,
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        Spacer(),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 30,
                splashRadius: 20,
                icon: Icon(
                  Icons.mail,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                iconSize: 30,
                splashRadius: 20,
                icon: Icon(
                  Icons.calendar_today,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                iconSize: 30,
                splashRadius: 20,
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: RoundImage(
                  url:
                      'https://images.unsplash.com/photo-1543466835-00a7907e9de1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
