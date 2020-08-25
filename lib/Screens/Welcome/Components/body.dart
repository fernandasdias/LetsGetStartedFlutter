import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/Welcome/Components/background.dart';
import 'package:login/components/already_have_an_account_check.dart';
import 'package:login/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.04),
            SvgPicture.asset(
              'assets/icons/boy.svg',
              height: size.height * 0.40,
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              'Hello Human',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(height: size.height * 0.04),
            RoundedButton(
              text: 'Get Started',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
