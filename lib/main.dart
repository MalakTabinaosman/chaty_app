import 'package:chat_app_learn/screens/main_screen.dart';
import 'package:chat_app_learn/screens/sign_in_screen.dart';
import 'package:chat_app_learn/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "MainScreen": (context) => MainScreen(),
        "SignInScreen":(context)=>SignInScreen(),
        "SignUpScreen" :(context)=>SignUpScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: "MainScreen",
    );
  }
}