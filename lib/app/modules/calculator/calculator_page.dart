import 'package:calculator/app/modules/calculator/components/display_widget.dart';
import 'package:calculator/app/modules/calculator/components/keyboard_widget.dart';
import 'package:calculator/app/shared/models/memory.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final Memory memory = Memory();

  void _onPressed(String? command) {
    setState(() {
      memory.applyCommand(command!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Display(text: memory.value),
            Keyboard(onPressed: _onPressed),
          ],
        ),
      ),
    );
  }
}
