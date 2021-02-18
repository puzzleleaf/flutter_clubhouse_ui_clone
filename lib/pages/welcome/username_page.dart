import 'package:club_house/constants/util.dart';
import 'package:club_house/pages/welcome/pick_photo_page.dart';
import 'package:flutter/material.dart';

class UsernamePage extends StatefulWidget {
  @override
  _UsernamePageState createState() => _UsernamePageState();
}

class _UsernamePageState extends State<UsernamePage> {
  final _userNameController = TextEditingController();
  final _userNameFormKey = GlobalKey<FormState>();
  Function onNextButtonClick;

  next() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => PickPhotoPage(),
      ),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Util.BackgroundColor,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Pick a username',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 350,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Form(
                key: _userNameFormKey,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    _userNameFormKey.currentState.validate();
                  },
                  validator: (value) {
                    if (value.isNotEmpty) {
                      setState(() {
                        onNextButtonClick = next;
                      });
                    } else {
                      setState(() {
                        onNextButtonClick = null;
                      });
                    }
                    return null;
                  },
                  controller: _userNameController,
                  autocorrect: false,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "@username",
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              constraints: BoxConstraints(
                minWidth: 230,
              ),
              child: RaisedButton(
                onPressed: onNextButtonClick,
                disabledColor: Util.ButtonColor.withOpacity(0.3),
                color: Util.ButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 0.5,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25,
                ),
                child: Text(
                  'Next →',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
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
