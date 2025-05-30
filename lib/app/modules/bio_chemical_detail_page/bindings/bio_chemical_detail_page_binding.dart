import 'package:get/get.dart';

import '../controllers/bio_chemical_detail_page_controller.dart';

class BioChemicalDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BioChemicalDetailPageController>(
      () => BioChemicalDetailPageController(),
    );
  }
}
