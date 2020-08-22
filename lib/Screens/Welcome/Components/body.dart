import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Screens/Welcome/Components/background.dart';
import 'package:login/components/rounded_button.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text(
            "Welcome Fernanda",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.04),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.04),
            RoundedButton(
              text: "LOGIN",
              press: () {},

            ),
             RoundedButton(
              text: "REGISTER",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},

            ),
          ],
       )
    );
  }
}
