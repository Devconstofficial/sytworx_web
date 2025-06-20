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

class SetNewPassScreen extends GetView<AuthController> {
  const SetNewPassScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AuthComponent(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Set New Password",
              style: AppStyles.semiBoldGilroyTextStyle().copyWith(
                fontSize: 36.sp,
              ),
            ),
            SizedBox(height: 28.h),
            Text(
              "Please enter your new password.",
              style: AppStyles.regularGilroyTextStyle().copyWith(fontSize: 20,),
            ),
            SizedBox(height: 48.h),
            Text(
              "New Password",
              style: AppStyles.regularGilroyTextStyle().copyWith(fontSize: 16.sp,color: kBlackTextColor4,),
            ),
            SizedBox(height: 8.h),
            Obx(
                  () => CustomTextField(
                hintText: "at least 8 characters",
                isObscure: controller.isPasswordHidden1.value,
                suffix: IconButton(
                  icon: Icon(
                    controller.isPasswordHidden1.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    controller.togglePasswordVisibility1();
                  },
                ),
                fillColor: kWhiteColor,
                isFilled: true,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Confirm New Password",
              style: AppStyles.regularGilroyTextStyle().copyWith(fontSize: 16.sp,color: kBlackTextColor4,),
            ),
            SizedBox(height: 8.h),
            Obx(
                  () => CustomTextField(
                hintText: "at least 8 characters",
                isObscure: controller.isPasswordHidden2.value,

                suffix: IconButton(
                  icon: Icon(
                    controller.isPasswordHidden2.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    controller.togglePasswordVisibility2();
                  },
                ),
                fillColor: kWhiteColor,
                isFilled: true,
              ),
            ),
            SizedBox(height: 75),
            CustomButton(
              title: "Update Password",
              borderColor: kBlackColor,
              color: kBlackColor,
              onTap: () {
                Get.toNamed(kLoginScreenRoute);
              },
            ),
          ],
        ),
      ),

    );
  }
}
