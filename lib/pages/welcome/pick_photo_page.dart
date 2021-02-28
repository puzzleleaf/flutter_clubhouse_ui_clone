import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class PickPhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.BackgroundColor,
      appBar: AppBar(
        actions: [
          buildActionButton(),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 60,
        ),
        child: Column(
          children: [
            buildTitle(),
            Spacer(
              flex: 1,
            ),
            buildContents(),
            Spacer(
              flex: 3,
            ),
            buildBottom(context),
          ],
        ),
      ),
    );
  }

  Widget buildActionButton() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Text(
        'Skip',
        textAlign: TextAlign.end,
        style: TextStyle(
          color: Style.DarkBrown,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      'Great! Now add a photo?',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
    );
  }

  Widget buildContents() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(80),
      ),
      child: Icon(
        Icons.add_photo_alternate_outlined,
        size: 100,
        color: Style.ButtonColor,
      ),
    );
  }

  Widget buildBottom(BuildContext context) {
    return RoundButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
      disabledColor: Style.ButtonColor.withOpacity(0.3),
      color: Style.ButtonColor,
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Next',
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
    );
  }
}
