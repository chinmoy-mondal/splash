import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash/src/features/authentication/controllers/signup_controller.dart';
import 'package:splash/src/features/authentication/models/user_model.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  label: Text(tEmail), prefixIcon: Icon(Icons.email)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                  label: Text(tPhoneNo), prefixIcon: Icon(Icons.phone)),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  label: Text(tPassword), prefixIcon: Icon(Icons.password)),
            ),
            const SizedBox(height: tFormHeight - 20),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Email & Password Authentication
                      // SignUpController.instance.registerUser(controller.email.text.trim(),controller.password.text.trim());
                      // For Phone Authentication
                      // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                      // Get.to(()=> const OTPScreen());

                      final user = UserModel(
                          email: controller.email.text.trim(),
                          password: controller.password.text.trim(),
                          fullName: controller.fullName.text.trim(),
                          phoneNo: controller.phoneNo.text.trim()
                      );
                      SignUpController.instance.createUser(user);
                    }
                  },
                  child: Text(tSignup.toUpperCase()),
                ))
          ],
        ),
      ),
    );
  }
}
