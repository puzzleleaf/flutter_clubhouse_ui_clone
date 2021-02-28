import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/widgets/round_image.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/pages/welcome/full_name_page.dart';
import 'package:flutter/material.dart';

class InvitationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.BackgroundColor,
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '🎉 Welcome to Clubhouse.\nYou\'re Puzzleleaf\'s friend!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            buildContents(),
            buildBottom(context),
          ],
        ),
      ),
    );
  }

  buildContents() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            RoundImage(
              width: 150,
              height: 150,
              borderRadius: 40,
              path: 'assets/images/puzzleleaf.png',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Puzzleleaf Youtube',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildBottom(BuildContext context) {
    return Column(
      children: [
        Text(
          'Let\'s set up your profile?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          constraints: BoxConstraints(
            minWidth: 230,
          ),
          child: RoundButton(
            disabledColor: Style.ButtonColor.withOpacity(0.3),
            color: Style.ButtonColor,
            text: '🐋 Import from Whale',
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FullNamePage();
            }));
          },
          child: Text(
            'Enter my info manually',
            style: TextStyle(
              color: Style.AccentBlue,
            ),
          ),
        ),
      ],
    );
  }
}
