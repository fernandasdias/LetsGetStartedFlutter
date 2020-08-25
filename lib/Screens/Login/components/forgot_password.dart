import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class ForgotPasswordCheck extends StatelessWidget {
  final Function press;

  const ForgotPasswordCheck({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      width: size.width * 0.85,
      child: Row(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.04,
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: kPrimaryGreenColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
