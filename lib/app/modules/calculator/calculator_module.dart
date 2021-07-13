import 'package:calculator/app/modules/calculator/calculator_page.dart';
import 'package:calculator/app/modules/calculator/calculator_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CalculatorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CalculatorController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => CalculatorPage()),
  ];
}
