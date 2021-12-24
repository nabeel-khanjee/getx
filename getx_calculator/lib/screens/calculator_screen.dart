import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/controllers/calculator_controller.dart';
import 'package:getx_calculator/widgets/calc_buttom.dart';
import 'package:getx_calculator/widgets/math_result.dart';

class CalculatorScreen extends StatelessWidget {
  final CalculatorCtrl = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            MathResult(),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    bgColor: Color(0xffA5A5A5),
                    onPressed: () => CalculatorCtrl.resetAll(),
                  ),
                  CalculatorButton(
                    text: '+/-',
                    bgColor: Color(0xffA5A5A5),
                    onPressed: () => CalculatorCtrl.changeNegativePositive(),
                  ),
                  CalculatorButton(
                    text: 'del',
                    bgColor: Color(0xffA5A5A5),
                    onPressed: () => CalculatorCtrl.deleteEntry(),
                  ),
                  CalculatorButton(
                    text: '/',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => CalculatorCtrl.selectOperation('/'),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '7',
                    onPressed: () => CalculatorCtrl.addNumber('7'),
                  ),
                  CalculatorButton(
                    text: '8',
                    onPressed: () => CalculatorCtrl.addNumber('8'),
                  ),
                  CalculatorButton(
                    text: '9',
                    onPressed: () => CalculatorCtrl.addNumber('9'),
                  ),
                  CalculatorButton(
                    text: 'X',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => CalculatorCtrl.selectOperation('X'),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '4',
                    onPressed: () => CalculatorCtrl.addNumber('4'),
                  ),
                  CalculatorButton(
                    text: '5',
                    onPressed: () => CalculatorCtrl.addNumber('5'),
                  ),
                  CalculatorButton(
                    text: '6',
                    onPressed: () => CalculatorCtrl.addNumber('6'),
                  ),
                  CalculatorButton(
                    text: '-',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => CalculatorCtrl.selectOperation('-'),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '1',
                    onPressed: () => CalculatorCtrl.addNumber('1'),
                  ),
                  CalculatorButton(
                    text: '2',
                    onPressed: () => CalculatorCtrl.addNumber('2'),
                  ),
                  CalculatorButton(
                    text: '3',
                    onPressed: () => CalculatorCtrl.addNumber('3'),
                  ),
                  CalculatorButton(
                    text: '+',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => CalculatorCtrl.selectOperation('+'),
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '0',
                    big: true,
                    onPressed: () => CalculatorCtrl.addNumber('0'),
                  ),
                  CalculatorButton(
                    text: '.',
                    onPressed: () => CalculatorCtrl.addDecimalPoint(),
                  ),
                  CalculatorButton(
                    text: '=',
                    bgColor: Color(0xffF0A23B),
                    onPressed: () => CalculatorCtrl.calculateResults(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
