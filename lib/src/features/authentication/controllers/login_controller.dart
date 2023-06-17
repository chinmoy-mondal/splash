import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:splash/src/repository/authentication_repository/authentication_repository.dart';

class loginController extends GetxController {
  static loginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

//  call this Function form Design & it will do the rest
  void loginUser(String email, String password) {
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  }

}
