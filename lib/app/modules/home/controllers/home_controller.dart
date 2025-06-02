import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final selectedBottomNavIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeBottomNavIndex(int index) {
    selectedBottomNavIndex.value = index;
    // Add navigation logic here
    switch (index) {
      case 0:
        Get.toNamed(Routes.SEARCH);
        break;
      case 1:
        Get.toNamed(Routes.FAVOURITES);
        break;
      case 2:
        Get.toNamed(Routes.RECENT);
        break;
    }
  }

  void onClinicalPresentationsTap() {
    // TODO: Navigate to Clinical Presentations
    Get.toNamed(Routes.CLINICAL_PRESENTATIONS);
  }

  void onBiochemicalEmergenciesTap() {
    // TODO: Navigate to Biochemical Emergencies
    Get.toNamed(Routes.BIO_CHEMICAL_DIAGNOSIS);
  }

  void onClinicalDiagnosisTap() {
    // TODO: Navigate to Clinical Diagnosis
    Get.toNamed(Routes.CLINICAL_DIAGNOSIS);
  }

  void onNews2ScoreTap() {
    // TODO: Navigate to NEWS2 Score
    Get.toNamed(Routes.NEWS2_CORE);
  }

  void onAboutTap() {
    // TODO: Navigate to About
    Get.toNamed(Routes.ABOUT_VIEW);
  }
}
