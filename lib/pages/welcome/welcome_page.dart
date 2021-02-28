import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/pages/welcome/phone_number_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.BackgroundColor,
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
          bottom: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle(),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: buildContents(),
            ),
            buildBottom(context),
          ],
        ),
      ),
    );
  }

  buildTitle() {
    return Text(
      '🎉 Welcome!',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
    );
  }

  buildContents() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'We\'re working hard to get Clubhouse ready for launch! While we wrap up the finishing touches, we\'re adding people gradually to make sure nothing breaks. :)',
            style: TextStyle(
              color: Colors.black,
              height: 1.8,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'If you don\'t yet have an invite, you can reserve your username now and we\'ll get you on very soon. We are so grateful you\'re here and can\'t wait to have you join! 🙏',
            style: TextStyle(
              color: Colors.black,
              height: 1.8,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            '🏠 Paul, Rohan & the Clubhouse team',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  buildBottom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RoundButton(
          color: Style.ButtonColor,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PhoneNumberPage();
            }));
          },
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Get your username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Have an invite text?',
              style: TextStyle(
                color: Style.AccentBlue,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'Sign in',
              style: TextStyle(
                color: Style.AccentBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_right_alt,
              color: Style.AccentBlue,
            ),
          ],
        ),
      ],
    );
  }
}
