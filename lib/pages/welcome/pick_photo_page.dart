import 'package:club_house/constants/util.dart';
import 'package:club_house/pages/home/home_page.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:flutter/material.dart';

class PickPhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Util.BackgroundColor,
      appBar: AppBar(
        actions: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Skip',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Util.DarkBrown,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Great! Now add a photo?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(80),
              ),
              child: Icon(
                Icons.add_photo_alternate_outlined,
                size: 100,
                color: Util.ButtonColor,
              ),
            ),
            Spacer(
              flex: 3,
            ),
            RoundButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              disabledColor: Util.ButtonColor.withOpacity(0.3),
              color: Util.ButtonColor,
              text: 'Next →',
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
