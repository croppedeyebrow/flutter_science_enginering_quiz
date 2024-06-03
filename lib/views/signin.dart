import 'package:flutter/material.dart';
import 'package:flutter_science_enginering_quiz_app/controllers/text_controller.dart';

import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';
// 컨트롤러 경로에 맞게 수정

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: appBar(context)),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Obx(() => controller.isLoading.value
            ? CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: Text('로그인'),
              )),
      ),
    );
  }
}
