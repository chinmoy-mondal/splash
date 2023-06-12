import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        builder: (context) => Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tForgetPassword,
                style:
                Theme.of(context).textTheme.bodyLarge,
              ),
              Text(tForgetMailSubTitle,style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(
                height: 30,
              ),
              ForgetPasswordBtnWidget(
                onTap: () {
                  Navigator.pop(context);
                  Get.to(()=>const ForgetPasswordMailScreen());
                },
                btnIcon: Icons.mail_outline_rounded,
                title: tEmail,
                subTitle: tResetViaEmail,
              ),
              const SizedBox(height: 10.0),
              ForgetPasswordBtnWidget(
                onTap: () {},
                btnIcon: Icons.mobile_friendly_rounded,
                title: tPhoneNo,
                subTitle: tResetViaPhone,
              ),
            ],
          ),
        ));
  }
}