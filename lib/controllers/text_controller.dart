import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var textColor1 = Colors.green.obs;
  var textColor2 = Colors.blue.obs;

  void changeColor() {
    textColor1.value =
        (textColor1.value == Colors.red) ? Colors.blue : Colors.red;
    textColor2.value =
        (textColor2.value == Colors.blue) ? Colors.green : Colors.blue;
  }
}

Widget appBar(BuildContext context) {
  final TextController controller = Get.put(TextController());

  return Obx(() => RichText(
        text: TextSpan(style: TextStyle(fontSize: 22), children: <TextSpan>[
          TextSpan(
            text: 'SE.Quiz',
            style: TextStyle(color: controller.textColor1.value, fontSize: 20),
          ),
          TextSpan(
            text: 'Maker',
            style: TextStyle(
                color: controller.textColor2.value,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ]),
      ));
}
