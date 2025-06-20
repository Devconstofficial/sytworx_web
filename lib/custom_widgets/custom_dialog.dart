// widgets/custom_dialog.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomDialog extends StatelessWidget {
  final Widget content;
  final double? width;
  double horPadding;
  bool showTitle;
  String title;

  CustomDialog({
    super.key,
    required this.content,
    this.width,
    this.showTitle = false,
    this.horPadding = 28,
    this.title = ''
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: SizedBox(
        width: width ?? 598,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 37,horizontal: horPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: showTitle == true ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
                  children: [
                    if(showTitle == true)
                    Text(title,style: AppStyles.regularGilroyTextStyle().copyWith(fontSize: 28.sp,fontWeight: FontWeight.w500),),
                    InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kWhiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: kBlackColor.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(child: Icon(Icons.close,size: 20,)),
                      ),
                    ),
                  ],
                ),
                content,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
