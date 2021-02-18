import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final profile;

  const HomeAppBar({Key key, this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
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
        ),
        Expanded(
          flex: 2,
          child: Container(
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
                IconButton(
                  iconSize: 30,
                  splashRadius: 20,
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                  ),
                  onPressed: () {},
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
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1543466835-00a7907e9de1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
