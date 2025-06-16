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
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
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
                ]),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SignupBottomText(
                  onLogInTap: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
