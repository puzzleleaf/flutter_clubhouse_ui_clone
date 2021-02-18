import 'package:club_house/constants/util.dart';
import 'package:club_house/pages/welcome/invitation_page.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberPage extends StatefulWidget {
  @override
  _PhoneNumberPageState createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  final _phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Function onSignUpButtonClick;

  signUp() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => InvitationPage(),
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
              'Enter your phone #',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    CountryCodePicker(
                      initialSelection: 'KR',
                      showCountryOnly: false,
                      alignLeft: false,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      textStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Expanded(
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          onChanged: (value) {
                            _formKey.currentState.validate();
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              setState(() {
                                onSignUpButtonClick = null;
                              });
                            } else {
                              setState(() {
                                onSignUpButtonClick = signUp;
                              });
                            }
                            return null;
                          },
                          controller: _phoneNumberController,
                          autocorrect: false,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Text(
              'By entering your number, you\'re agreeing to our\nTerms of Services and Privacy Policy. Thanks!',
              style: TextStyle(
                color: Colors.grey,
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
                onPressed: onSignUpButtonClick,
                disabledColor: Util.ButtonColor.withOpacity(0.3),
                color: Util.ButtonColor,
                text:  'Next →',
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
