import 'package:club_house/constants/util.dart';
import 'package:club_house/pages/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Util.LightSand,
      appBar: AppBar(
        title: HomeAppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20,),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20,),
            decoration: BoxDecoration(
              color: Util.AccentSand,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('5:00 PM', style: TextStyle(
                      color: Util.DarkBrown,
                    ),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
