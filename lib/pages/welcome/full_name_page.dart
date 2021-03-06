import 'package:club_house/util/history.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/pages/welcome/username_page.dart';
import 'package:flutter/material.dart';

class FullNamePage extends StatefulWidget {
  @override
  _FullNamePageState createState() => _FullNamePageState();
}

class _FullNamePageState extends State<FullNamePage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _firstNameFormKey = GlobalKey<FormState>();
  final _lastNameFormKey = GlobalKey<FormState>();
  Function onNextButtonClick;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 30, bottom: 60),
        child: Column(
          children: [
            buildTitle(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: buildForm(),
            ),
            Spacer(),
            buildBottom(),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      'What\'s your full name?',
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }

  Widget buildForm() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Form(
              key: _firstNameFormKey,
              child: TextFormField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  _firstNameFormKey.currentState.validate();
                },
                validator: (value) {
                  if (value.isNotEmpty) {
                    if (_lastNameController.text.isNotEmpty) {
                      setState(() {
                        onNextButtonClick = next;
                      });
                    }
                  } else {
                    setState(() {
                      onNextButtonClick = null;
                    });
                  }

                  return null;
                },
                controller: _firstNameController,
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'First Name',
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
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Form(
              key: _lastNameFormKey,
              child: TextFormField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  _lastNameFormKey.currentState.validate();
                },
                validator: (value) {
                  if (value.isNotEmpty) {
                    if (_firstNameController.text.isNotEmpty) {
                      setState(() {
                        onNextButtonClick = next;
                      });
                    }
                  } else {
                    setState(() {
                      onNextButtonClick = null;
                    });
                  }

                  return null;
                },
                controller: _lastNameController,
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Last Name',
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
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildBottom() {
    return RoundButton(
      color: Style.AccentBlue,
      minimumWidth: 230,
      disabledColor: Style.AccentBlue.withOpacity(0.3),
      onPressed: onNextButtonClick,
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

  next() {
    History.pushPage(context, UsernamePage());
  }
}
