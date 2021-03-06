import 'package:club_house/util/history.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/pages/welcome/invitation_page.dart';
import 'package:flutter/material.dart';

class PhoneNumberPage extends StatefulWidget {
  @override
  _PhoneNumberPageState createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  final _phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Function onSignUpButtonClick;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            buildForm(),
            Spacer(),
            buildBottom(),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      'Enter your phone #',
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }

  Widget buildForm() {
    return Container(
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
            padding: const EdgeInsets.all(8),
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
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottom() {
    return Column(
      children: [
        Text(
          'By entering your number, you\'re agreeing to out\nTerms or Services and Privacy Policy. Thanks!',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        RoundButton(
          color: Style.AccentBlue,
          minimumWidth: 230,
          disabledColor: Style.AccentBlue.withOpacity(0.3),
          onPressed: onSignUpButtonClick,
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
      ],
    );
  }

  signUp() {
    History.pushPageUntil(context, InvitationPage());
  }
}
