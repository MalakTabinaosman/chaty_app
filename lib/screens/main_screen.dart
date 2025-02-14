import 'package:chat_app_learn/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Color(0xff6255d8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset("assets/images/Image_1_5.png"),
            SizedBox(
              height: 15,
            ),
            Text(
              "Chaty",
              style: TextStyle(
                fontFamily: "Asap",
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                    fontFamily: "Asap", fontSize: 20, color: Colors.white),
                children: [
                  TextSpan(text: "Connect and chat with friends \n"),
                  TextSpan(text: "seamlessly today!"),
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "SignUpScreen");
              },
              child: CustomButton(
                textColor: Color(0xff6255d8),
                text: "Get Started",
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
