import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/Screens/Welcome/widgets/body.dart';

class WelcomeScreen extends StatelessWidget {

  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Body(),
    );
  }
}
