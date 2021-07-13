import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String? text;
  final bool? isBig;
  final Color? color;
  final void Function(String)? onPressed;

  const Button({
    Key? key,
    required this.text,
    this.isBig = false,
    this.color = DEFAULT,
    required this.onPressed,
  }) : super(key: key);

  const Button.isBig({
    Key? key,
    required this.text,
    this.isBig = true,
    this.color = DEFAULT,
    required this.onPressed,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    this.isBig = false,
    this.color = OPERATION,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isBig! ? 2 : 1,
      child: Container(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(side: BorderSide.none),
            ),
          ),
          child: Text(
            text!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w300,
            ),
          ),
          onPressed: () => onPressed!(text!),
        ),
      ),
    );
  }
}
