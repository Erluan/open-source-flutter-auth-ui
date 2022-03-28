import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class RoundedButton extends StatelessWidget {
  String? text;
  Function()? onPressed;
  Color? color;
  Color? textColor;
  bool? isLoading;
  RoundedButton({
    Key? key,
    this.text,
    this.onPressed,
    this.color = mtPrimaryColor,
    this.textColor = Colors.white,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: isLoading! ?
      SizedBox(
          height: textMediumSize,
          width: textMediumSize,
          child: CircularProgressIndicator(
            color: textColor ?? Colors.white,
          )
      )
      : Text(
        text!,
        style: TextStyle(color: textColor),
      ),
      onPressed: onPressed!,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}