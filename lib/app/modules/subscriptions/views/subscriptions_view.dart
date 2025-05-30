import 'package:dr_on_call/app/modules/subscriptions/views/mini_widgets/subscriptions_header.dart';
import 'package:dr_on_call/app/widgets/background_container.dart';
import 'package:dr_on_call/config/AppText.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/subscriptions_controller.dart';
import 'mini_widgets/plan_card.dart';

class SubscriptionsView extends GetView<SubscriptionsController> {
  const SubscriptionsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundContainer(
            child: SingleChildScrollView(
      child: Column(
        children: [
          SubscriptionsHeader(),
          SizedBox(
            height: 15,
          ),
          PlanCard(
            title: AppText.trial,
            subtitle: AppText.plan,
            features: [
              AppText.accessToEmergencyCondition,
              AppText.oneScoringTool,
              AppText.news2Calculator,
            ],
            buttonText: AppText.currentPlan,
            isCurrent: true,
            isSelected: true,
          ),
          PlanCard(
            title: AppText.monthPlan,
            subtitle: AppText.monthly,
            features: [AppText.accessToCoreFeatures],
            buttonText: AppText.buyPlan,
            isSelected: false,
            onPressed: () {
              // Handle plan purchase
              print('Button Pressed');
            },
          ),
          PlanCard(
            title: AppText.yearlyPlan,
            subtitle: AppText.mostPopular,
            features: [AppText.accessToCoreFeatures],
            buttonText: AppText.buyPlan,
            isSelected: false,
            onPressed: () {
              // Handle plan purchase
              print('Button Pressed');
            },
          ),
          PlanCard(
            title: AppText.lifeTimePlan,
            subtitle: AppText.lifeTime,
            features: [AppText.accessToCoreFeatures],
            buttonText: AppText.buyPlan,
            isSelected: false,
            onPressed: () {
              // Handle plan purchase
              print('Button Pressed');
            },
          ),
        ],
      ),
    )));
  }
}
