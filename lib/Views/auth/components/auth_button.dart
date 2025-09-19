import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  // ignore: non_constant_identifier_names
  final Color TextColor;
  // ignore: non_constant_identifier_names
  final Color BackgroundColor;
  final Widget? icon;
  // ignore: non_constant_identifier_names
  const AuthButton({super.key, required this.text, required this.onPressed, required this.TextColor, required this.BackgroundColor, this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      //ini adalah simbol dari null aware operator/ atau operator yang di gunakan untuk menyimpan nilai default
      icon: icon ?? SizedBox.shrink(),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity,50),
        backgroundColor: BackgroundColor,
        foregroundColor: textColor,
        side: BackgroundColor == Colors.white
          ? BorderSide(color: Colors.grey)
          : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )
      ),
    );
  }
}