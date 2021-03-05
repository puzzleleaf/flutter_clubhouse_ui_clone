import 'package:club_house/models/user.dart';
import 'package:club_house/widgets/round_image.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final User profile;
  final Function onProfileTab;

  const HomeAppBar({Key key, this.profile, this.onProfileTab})
      : super(key: key);

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
                onTap: onProfileTab,
                child: RoundImage(
                  path: profile.profileImage,
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
