import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppText.dart';
import '../../../../../config/AppTextStyle.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/rounded_text_container.dart';
import '../../controllers/signup_controller.dart';

class SignUpForm extends StatelessWidget {
  final VoidCallback onLoginTap;

  SignUpForm({Key? key, required this.onLoginTap}) : super(key: key);

  final SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextField(
          hintText: 'Email',
          controller: controller.emailController,
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: 'Username',
          controller: controller.usernameController,
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: 'Phone',
          controller: controller.phoneController,
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: 'Password',
          isPassword: true,
          controller: controller.passwordController,
        ),
        const SizedBox(height: 20),

        // Show loader or button
        Obx(() => controller.isLoading.value
            ? const CircularProgressIndicator()
            : RoundedTextContainer(
                text: AppText.signUp,
                color: AppColors.baseColor,
                onTap: controller.signUp,
              )),

        const SizedBox(height: 15),

        Text(
          AppText.policyAgreement,
          textAlign: TextAlign.center,
          style: AppTextStyles.regular.copyWith(fontSize: 11),
        ),
      ],
    );
  }
}
