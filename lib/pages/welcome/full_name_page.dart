import 'package:club_house/constants/style.dart';
import 'package:club_house/pages/welcome/username_page.dart';
import 'package:club_house/widgets/round_button.dart';
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
      backgroundColor: Style.BackgroundColor,
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 60,
        ),
        child: Column(
          children: [
            buildTitle(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: buildForm(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'People use real names on Clubhouse :) Thnx!',
              style: TextStyle(
                color: Colors.grey,
              ),
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
        color: Colors.black,
        fontSize: 25,
      ),
    );
  }

  Widget buildForm() {
    return Row(
      children: [
        Expanded(
          flex: 1,
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
                  hintText: "First Name",
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
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Form(
              key: _lastNameFormKey,
              child: TextFormField(
                controller: _lastNameController,
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
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: "Last Name",
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
        ),
      ],
    );
  }

  Widget buildBottom() {
    return Container(
      constraints: BoxConstraints(
        minWidth: 230,
      ),
      child: RoundButton(
        disabledColor: Style.ButtonColor.withOpacity(0.3),
        color: Style.ButtonColor,
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
      ),
    );
  }

  next() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return UsernamePage();
    }));
  }
}
