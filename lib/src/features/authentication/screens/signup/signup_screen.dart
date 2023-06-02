import 'package:flutter/material.dart';
import 'package:splash/src/common_widgets/form/form_header_widget.dart';
import 'package:splash/src/constants/image_strings.dart';
import 'package:splash/src/constants/sizes.dart';
import 'package:splash/src/constants/text_strings.dart';
import 'package:splash/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FormHeaderWidget(
                image: tWelcomeScreenImage,
                title: tSignUpTitle,
                subTitle: tSignUpSubTitle,
              ),
              const SignUpFormWidget(),
              Column(
                children: [
                  Text("OR"),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: const Text(tSignInWithGoogle)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(children: [
                          const TextSpan(
                            text: tAlreadyHaveAnAccount,
                          ),
                          TextSpan(
                            text: tLogin.toUpperCase(),
                          )
                        ]),
                      )),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
