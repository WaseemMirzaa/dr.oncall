import 'package:get/get.dart';

import '../controllers/news2_core_controller.dart';

class News2CoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<News2CoreController>(
      () => News2CoreController(),
    );
  }
}
