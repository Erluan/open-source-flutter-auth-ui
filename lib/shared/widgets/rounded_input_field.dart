import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/shared/widgets/text_field_container.dart';
import 'package:flutter_auth_ui/constants.dart';

class RoundedInputField extends StatelessWidget {
  String? hintText;
  IconData? icon;
  ValueChanged<String>? onChanged;
  RoundedInputField({
    Key? key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: mtPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: mtPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}