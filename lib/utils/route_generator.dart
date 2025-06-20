import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sytworx_web/screens/auth/send_otp_screen.dart';
import 'package:sytworx_web/screens/auth/set_new_pass.dart';
import 'package:sytworx_web/screens/auth/signup_screen.dart';
import 'package:sytworx_web/screens/auth/verify_otp_screen.dart';
import 'package:sytworx_web/utils/screen_bindings.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/signup_screen.dart';
import 'app_strings.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kLoginScreenRoute, page: () => LoginScreen(), binding: ScreenBindings(),),
      GetPage(name: kSignupScreenRoute, page: () => SignupScreen(), binding: ScreenBindings(),),
      GetPage(name: kSendOtpScreenRoute, page: () => SendOtpScreen(), binding: ScreenBindings(),),
      GetPage(name: kVerifyOtpScreenRoute, page: () => VerifyOtpScreen(), binding: ScreenBindings(),),
      GetPage(name: kSetNewPassScreenRoute, page: () => SetNewPassScreen(), binding: ScreenBindings(),),
    ];
  }
}

