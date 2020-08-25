import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? 'Dont have an Account? ' : 'Already have an Account? ',
          style: TextStyle(color: kPrimaryTextColor),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sign Up' : 'Log In',
            style: TextStyle(
              color: kPrimaryGreenColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
