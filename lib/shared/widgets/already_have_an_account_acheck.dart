import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  bool? login;
  Function()? onPressed;

  AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login! ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: mtPrimaryColor),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            login! ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: mtPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}