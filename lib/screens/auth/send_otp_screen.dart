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

class SendOtpScreen extends GetView<AuthController> {
  const SendOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AuthComponent(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Forget Password?",
              style: AppStyles.semiBoldGilroyTextStyle().copyWith(
                fontSize: 36.sp,
              ),
            ),
            SizedBox(height: 28.h),
            Text(
              "Please enter your email to reset your password.",
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
            SizedBox(height: 48.h),
            CustomButton(
              title: "Submit",
              borderColor: kBlackColor,
              color: kBlackColor,
              onTap: () {
                Get.toNamed(kVerifyOtpScreenRoute);
              },
            ),
          ],
        ),
      ),

    );
  }
}
