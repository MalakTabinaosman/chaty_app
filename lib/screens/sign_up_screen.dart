import 'package:chat_app_learn/constants/constants.dart';
import 'package:chat_app_learn/widgets/custom_button.dart';
import 'package:chat_app_learn/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            height: size.height,
            width: size.width,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Create Account",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                          fontFamily: "Asap",
                          fontSize: 20,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: "Join the conversation and connect with  \n"),
                        TextSpan(text: "friends!"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CustomTextFiled(
                    text: "Enter your email address",
                    icon: Icon(Icons.email_outlined),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFiled(
                    text: "Enter full name",
                    icon: Icon(Icons.person_outline),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFiled(
                    text: "Enter your password",
                    icon: Icon(Icons.lock_outline),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box_outline_blank,
                          color: Colors.black,
                          size: 30,
                        ),
                        Text(
                          "I agree with Terms & Conditions",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    textColor: Colors.white,
                    text: "Sign up",
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already registered?",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "SignInScreen");
                        },
                        child: Text(
                          " Sign in",
                          style: TextStyle(fontSize: 16, color: kPrimaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
