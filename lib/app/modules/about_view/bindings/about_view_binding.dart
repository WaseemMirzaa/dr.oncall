import 'package:get/get.dart';

import '../controllers/about_view_controller.dart';

class AboutViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutViewController>(
      () => AboutViewController(),
    );
  }
}
