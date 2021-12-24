import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx_calculator/controllers/calculator_controller.dart';
import 'package:getx_calculator/widgets/line_separator.dart';
import 'package:getx_calculator/widgets/main_result.dart';
import 'package:getx_calculator/widgets/sub_result.dart';

class MathResult extends StatelessWidget {
  final CalculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          SubResult(text: '${CalculatorCtrl.firstNumber}'),
          SubResult(text: '${CalculatorCtrl.operation}'),
          SubResult(text: '${CalculatorCtrl.secondNumber}'),
          LineSeparator(),
          MainResultText(text: '${CalculatorCtrl.mathResult}'),
        ],
      ),
    );
  }
}
