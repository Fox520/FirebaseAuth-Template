import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppy/screens/home.dart';
import 'package:shoppy/screens/login.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          print(snapshot.hasData);
          print("yeah yeah");
          return (!snapshot.hasData) ? LoginScreen() : HomeScreen();
        });
  }
}
