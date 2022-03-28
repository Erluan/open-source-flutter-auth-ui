import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/shared/widgets/text_field_container.dart';
import 'package:flutter_auth_ui/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  ValueChanged<String>? onChanged;
  RoundedPasswordField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: mtPrimaryColor,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: mtPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: mtPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}