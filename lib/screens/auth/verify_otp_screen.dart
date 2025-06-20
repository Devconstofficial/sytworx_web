import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:otp_text_field/style.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/auth_component.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_textfield.dart';
import '../../utils/app_strings.dart';
import 'controller/auth_controller.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';

class VerifyOtpScreen extends GetView<AuthController> {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AuthComponent(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Verify OTP",
              style: AppStyles.semiBoldGilroyTextStyle().copyWith(
                fontSize: 36.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 28.h),
            Text(
              'Please enter the 5 digit code to confirm verification.',
              style: AppStyles.regularGilroyTextStyle().copyWith(fontSize: 20.sp,),
            ),
            SizedBox(height: 48.h),
            OTPTextField(
              length: 5,
              width: MediaQuery.of(context).size.width,
              textFieldAlignment: MainAxisAlignment.spaceBetween,
              fieldWidth: 56,
              otpFieldStyle: OtpFieldStyle(enabledBorderColor: kBlackTextColor2,borderColor: kBlackTextColor2,focusBorderColor: kPrimaryColor,disabledBorderColor: kBlackTextColor2),
              fieldStyle: FieldStyle.underline,
              contentPadding: EdgeInsets.symmetric(vertical: 25),
              outlineBorderRadius: 8.r,
              style: AppStyles.regularGilroyTextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w500),
              onChanged: (pin) {

              },
              onCompleted: (pin) async {},
            ),
            SizedBox(height: 48.h),
            CustomButton(
              title: "Verify OTP",
              borderColor: kBlackColor,
              color: kBlackColor,
              onTap: () {
                Get.toNamed(kSetNewPassScreenRoute);
              },
            ),
          ],
        ),
      ),

    );
  }
}
