import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:firebase_core/firebase_core.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
    controller = AnimationController(duration: Duration(seconds: 1), vsync: this
        // basically used for reference the state which referring to the above ticker inside same class
        );

    controller.forward();
    print(controller.value);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 100,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black54,
                      ),
                      speed: Duration(milliseconds: 250),
                    )
                  ],
                  repeatForever: true,
                  pause: Duration(milliseconds: 1),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
                colour: Colors.lightBlueAccent,
                tittle: 'Log In',
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.idl);
                }),
            RoundedButton(
                colour: Colors.blueAccent,
                tittle: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.idr);
                }),
          ],
        ),
      ),
    );
  }
}
