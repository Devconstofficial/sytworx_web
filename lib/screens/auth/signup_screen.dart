import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/auth_component.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_textfield.dart';
import '../../utils/app_strings.dart';
import 'controller/auth_controller.dart';

class SignupScreen extends GetView<AuthController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AuthComponent(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Your Account 👋",
              style: AppStyles.semiBoldGilroyTextStyle().copyWith(
                fontSize: 36.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 28.h),
            Text(
              "Sign up to start managing your sites.",
              style: AppStyles.regularGilroyTextStyle().copyWith(fontSize: 20.sp,color: kSecondaryColor,),
            ),
            SizedBox(height: 48.h),
            Text(
              "Email",
              style: AppStyles.regularGilroyTextStyle().copyWith(fontSize: 16.sp,color: kBlackTextColor4,),
            ),
            SizedBox(height: 8.h),
            CustomTextField(
              hintText: "Example@email.com",
              fillColor: kWhiteColor,
              isFilled: true,
            ),
            SizedBox(height: 24.h),
            Text(
              "Password",
              style: AppStyles.regularGilroyTextStyle().copyWith(fontSize: 16.sp,color: kBlackTextColor4,),
            ),
            SizedBox(height: 8.h),
            Obx(
                  () => CustomTextField(
                hintText: "at least 8 characters",
                isObscure: controller.isPasswordHidden.value,
                suffix: IconButton(
                  icon: Icon(
                    controller.isPasswordHidden.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    controller.togglePasswordVisibility();
                  },
                ),
                fillColor: kWhiteColor,
                isFilled: true,
              ),
            ),
            SizedBox(height: 24.h),
            CustomButton(
              title: "Sign up",
              color: kBlackColor,
              borderColor: kBlackColor,
              onTap: () {
                Get.toNamed(kDashboardScreenRoute);
              },
            ),
            SizedBox(height: 47.h),
            Row(
              children: [
                Expanded(child: Divider(color: kDividerColor,)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    "Or",
                    style: AppStyles.semiBoldGilroyTextStyle().copyWith(fontSize: 16.sp,color: kTealColor,),
                  ),
                ),
                Expanded(child: Divider(color: kDividerColor,)),
              ],
            ),
            SizedBox(height: 24.h),
            CustomButton(
              title: "Sign in with Google",
              onTap: () {
                // Get.toNamed(kDashboardScreenRoute);
              },
              color: kBgColor1,
              borderColor: kGreyColor4,
              textColor: kSecondaryColor,
              icon: kGoogleIcon,
              textSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 12.h),
            CustomButton(
              title: "Sign in with Facebook",
              onTap: () {
                // Get.toNamed(kDashboardScreenRoute);
              },
              color: kBgColor1,
              borderColor: kGreyColor4,
              textColor: kSecondaryColor,
              icon: kFacebookIcon,
              textSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 48.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't you have an account? ",
                  style: AppStyles.semiBoldGilroyTextStyle().copyWith(fontSize: 18.sp,color: kSecondaryColor,),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed(kLoginScreenRoute);
                    },
                    child: Text(
                      "Log in",
                      style: AppStyles.semiBoldGilroyTextStyle().copyWith(fontSize: 18.sp,color: kLightBlueColor,),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
