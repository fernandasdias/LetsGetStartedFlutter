import 'package:flutter/material.dart';
import 'package:login/Screens/Login/components/background.dart';
import 'package:login/Screens/Login/components/forgot_password.dart';
import 'package:login/Screens/Login/components/rounded_input_field.dart';
import 'package:login/Screens/Login/components/rounded_password_field.dart';

import 'package:login/Screens/Sign%20Up/signup_screen.dart';
import 'package:login/components/already_have_an_account_check.dart';
import 'package:login/components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: size.height * 0.040),
            // SvgPicture.asset('assets/icons/boy.svg',
            //     height: size.height * 0.30),
            // SizedBox(height: size.height * 0.040),
            RoundedInputField(
              hintText: 'Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
            ),
            SizedBox(height: size.height * 0.010),

            ForgotPasswordCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.010),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
