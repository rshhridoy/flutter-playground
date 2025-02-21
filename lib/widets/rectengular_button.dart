import 'package:flutter/material.dart';

class RectengularButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const RectengularButton(
      {super.key,
      required this.btnName,
      this.icon,
      this.bgColor = Colors.red,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          if (callback != null) {
            callback!();
          }
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            shadowColor: Colors.black,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(3))),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  Text(
                    btnName,
                    style: textStyle,
                  )
                ],
              )
            : Text(
                btnName,
                style: textStyle,
              ),
      ),
    );
  }
}
