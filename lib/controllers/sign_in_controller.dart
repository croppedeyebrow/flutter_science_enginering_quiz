import 'package:get/get.dart';

class SignInController extends GetxController {
  var isLoading = false.obs;

  void login() {
    isLoading.value = true;
    // 로그인 로직 구현
    // 예: API 호출
    // 완료 후:
    isLoading.value = false;
  }
}
