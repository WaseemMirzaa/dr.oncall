import 'package:get/get.dart';

import '../modules/about_view/bindings/about_view_binding.dart';
import '../modules/about_view/views/about_view_view.dart';
import '../modules/bio_chemical_detail_page/bindings/bio_chemical_detail_page_binding.dart';
import '../modules/bio_chemical_detail_page/views/bio_chemical_detail_page_view.dart';
import '../modules/bio_chemical_diagnosis/bindings/bio_chemical_diagnosis_binding.dart';
import '../modules/bio_chemical_diagnosis/views/bio_chemical_diagnosis_view.dart';
import '../modules/chest_pain/bindings/chest_pain_binding.dart';
import '../modules/chest_pain/views/chest_pain_view.dart';
import '../modules/clinical_details/bindings/clinical_details_binding.dart';
import '../modules/clinical_details/views/clinical_details_view.dart';
import '../modules/clinical_diagnosis/bindings/clinical_diagnosis_binding.dart';
import '../modules/clinical_diagnosis/views/clinical_diagnosis_view.dart';
import '../modules/clinical_presentations/bindings/clinical_presentations_binding.dart';
import '../modules/clinical_presentations/views/clinical_presentations_view.dart';
import '../modules/forgotview/bindings/forgotview_binding.dart';
import '../modules/forgotview/views/forgotview_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/medical_details/bindings/medical_details_binding.dart';
import '../modules/medical_details/views/medical_details_view.dart';
import '../modules/news2_core/bindings/news2_core_binding.dart';
import '../modules/news2_core/views/news2_core_view.dart';
import '../modules/onboardingscreen/bindings/onboardingscreen_binding.dart';
import '../modules/onboardingscreen/views/onboardingscreen_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/subscriptions/bindings/subscriptions_binding.dart';
import '../modules/subscriptions/views/subscriptions_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDINGSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.ONBOARDINGSCREEN,
      page: () => const OnboardingscreenView(),
      binding: OnboardingscreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTVIEW,
      page: () => const ForgotviewView(),
      binding: ForgotviewBinding(),
    ),
    GetPage(
      name: _Paths.CLINICAL_PRESENTATIONS,
      page: () => const ClinicalPresentationsView(),
      binding: ClinicalPresentationsBinding(),
    ),
    GetPage(
      name: _Paths.CHEST_PAIN,
      page: () => const ChestPainView(),
      binding: ChestPainBinding(),
    ),
    GetPage(
      name: _Paths.MEDICAL_DETAILS,
      page: () => const MedicalDetailsView(),
      binding: MedicalDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CLINICAL_DIAGNOSIS,
      page: () => const ClinicalDiagnosisView(),
      binding: ClinicalDiagnosisBinding(),
    ),
    GetPage(
      name: _Paths.CLINICAL_DETAILS,
      page: () => const ClinicalDetailsView(),
      binding: ClinicalDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BIO_CHEMICAL_DIAGNOSIS,
      page: () => const BioChemicalDiagnosisView(),
      binding: BioChemicalDiagnosisBinding(),
    ),
    GetPage(
      name: _Paths.BIO_CHEMICAL_DETAIL_PAGE,
      page: () => const BioChemicalDetailPageView(),
      binding: BioChemicalDetailPageBinding(),
    ),
    GetPage(
      name: _Paths.NEWS2_CORE,
      page: () => const News2CoreView(),
      binding: News2CoreBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_VIEW,
      page: () => const AboutViewView(),
      binding: AboutViewBinding(),
    ),
    GetPage(
      name: _Paths.SUBSCRIPTIONS,
      page: () => const SubscriptionsView(),
      binding: SubscriptionsBinding(),
    ),
  ];
}
