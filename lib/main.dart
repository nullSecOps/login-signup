import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wechat/auth/auth_gate.dart';
import 'package:wechat/auth/login_or_register.dart';
import 'package:wechat/firebase_options.dart';
// import 'package:wechat/pages/login_page.dart';
// import 'package:wechat/pages/register_page.dart';
import 'package:wechat/themes/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'We Chat',
      // theme: lightMod,
      theme: lightMode,
      home: const AuthGate(),
    );
  }
}
