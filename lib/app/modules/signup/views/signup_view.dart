import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/background_container.dart';
import '../controllers/signup_controller.dart';
import 'mini_widgets/bottom_text.dart';
import 'mini_widgets/signup_header_section.dart';
import 'mini_widgets/signup_form.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SignupHeaderSection(),
            ),
            const SizedBox(height: 100),
            SignUpForm(
              onLoginTap: () {
                Get.toNamed(Routes.LOGIN);
              },
            ),
            Spacer(),
            SignupBottomText(
              onLogInTap: () {
                Get.toNamed(Routes.LOGIN);
              },
            ),
          ],
        ),
      ),
    ));
  }
}
