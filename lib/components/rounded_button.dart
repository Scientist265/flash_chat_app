import 'package:flutter/material.dart';
import 'package:flash_chat/screens/login_screen.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.colour, this.tittle, @required this.onPressed});
  final Color colour;
  final String tittle;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Color(0xff12173A),
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            tittle,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ));
  }
}
