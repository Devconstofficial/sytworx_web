import 'package:get/get.dart';

import '../screens/auth/controller/auth_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
