import 'package:flutter/material.dart';

import '../../../constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      width: size.width * 0.85,
      decoration: BoxDecoration(
        color: kPrimaryGrayColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
