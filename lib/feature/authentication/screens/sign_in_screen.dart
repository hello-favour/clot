import 'package:clot/app/routes.dart';
import 'package:clot/feature/authentication/widgets/app_rich_text.dart';
import 'package:clot/feature/authentication/widgets/social_button.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_textfield.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.15, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign in",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(30),
            AppTextField(
              inputType: TextInputType.emailAddress,
              label: "Email Address",
              controller: TextEditingController(),
            ),
            const Gap(20),
            AppButton(
              title: "Continue",
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.signInPs);
              },
            ),
            const Gap(20),
            AppRichText(
              text1: "Don't have an Account? ",
              text2: 'Create One',
              onTap: () {
                print('Create One tapped!');
              },
            ),
            Gap(size.height * 0.10),
            SocialButton(
              onTap: () {},
              title: "Continue With Google",
            ),
          ],
        ),
      ),
    );
  }
}
