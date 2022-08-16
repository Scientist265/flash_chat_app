

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login {
  final _auth = FirebaseAuth.instance;

  Future firebaseLogin(
      {@required String email, @required String password}) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        return 'successful';
      });
    } on FirebaseAuthException catch (e) {
      return e;
    }
  }
}
