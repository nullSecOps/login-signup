import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wechat/auth/login_or_register.dart';
import 'package:wechat/pages/homepage.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        // Builder : (context, snapshot){}
        builder: (context, snapshot) {
          // user alredy logged in xa bane
          if (snapshot.hasData) {
            return const HomePage();
            // print(snapshot.hasData);
          }
          // if user is not logged in
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
