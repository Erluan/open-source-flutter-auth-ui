import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/Screens/Login/widgets/background.dart';
import 'package:flutter_auth_ui/Screens/Signup/signup_screen.dart';
// import 'package:flutter_auth_ui/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth_ui/shared/widgets/already_have_an_account_acheck.dart';
import 'package:flutter_auth_ui/shared/widgets/rounded_button.dart';
import 'package:flutter_auth_ui/shared/widgets/rounded_input_field.dart';
import 'package:flutter_auth_ui/shared/widgets/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              onPressed: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}