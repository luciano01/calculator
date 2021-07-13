import 'package:calculator/app/modules/calculator/components/button_widget.dart';
import 'package:calculator/app/modules/calculator/components/buttons_row_widget.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String)? onPressed;
  const Keyboard({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ButtonsRow(
            buttons: [
              Button.isBig(
                text: 'AC',
                onPressed: onPressed,
                color: Button.DARK,
              ),
              Button(
                text: '%',
                onPressed: onPressed,
                color: Button.DARK,
              ),
              Button.operation(
                text: '/',
                onPressed: onPressed,
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              Button(
                text: '7',
                onPressed: onPressed,
              ),
              Button(
                text: '8',
                onPressed: onPressed,
              ),
              Button(
                text: '9',
                onPressed: onPressed,
              ),
              Button.operation(
                text: 'x',
                onPressed: onPressed,
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              Button(
                text: '4',
                onPressed: onPressed,
              ),
              Button(
                text: '5',
                onPressed: onPressed,
              ),
              Button(
                text: '6',
                onPressed: onPressed,
              ),
              Button.operation(
                text: '-',
                onPressed: onPressed,
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              Button(
                text: '1',
                onPressed: onPressed,
              ),
              Button(
                text: '2',
                onPressed: onPressed,
              ),
              Button(
                text: '3',
                onPressed: onPressed,
              ),
              Button.operation(
                text: '+',
                onPressed: onPressed,
              ),
            ],
          ),
          ButtonsRow(
            buttons: [
              Button.isBig(
                text: '0',
                onPressed: onPressed,
              ),
              Button(
                text: '.',
                onPressed: onPressed,
              ),
              Button.operation(
                text: '=',
                onPressed: onPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
