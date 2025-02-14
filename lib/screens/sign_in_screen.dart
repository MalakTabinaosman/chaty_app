import 'package:chat_app_learn/constants/constants.dart';
import 'package:chat_app_learn/widgets/custom_button.dart';
import 'package:chat_app_learn/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        height: size.height,
        width: size.width,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              ),
              SizedBox(
                height: 50,
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
              CustomButton(
                textColor: Colors.white,
                text: "Sign in",
                color: kPrimaryColor,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      " Sign up",
                      style: TextStyle(fontSize: 16, color: kPrimaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
