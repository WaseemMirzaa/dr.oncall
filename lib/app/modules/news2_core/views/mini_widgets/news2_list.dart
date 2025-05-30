import 'package:dr_on_call/app/modules/news2_core/views/mini_widgets/news2_tiles.dart';
import 'package:dr_on_call/config/AppColors.dart';
import 'package:dr_on_call/config/AppTextStyle.dart';
import 'package:flutter/material.dart';

import '../../../../../config/AppText.dart';

class News2List extends StatelessWidget {
  const News2List({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        News2Tiles(
          symptoms: const [
            AppText.respiratoryRate,
            AppText.oxygenSaturation,
            AppText.temperature,
            AppText.systolicBloodPressure,
            AppText.heartRate,
            AppText.levelOfConsciousness,
            AppText.oxygenRequirement,
          ],
          onSelectionChanged: (selectedSymptoms) {
            print('Selected symptoms: $selectedSymptoms');
          },
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
          ),
          spacing: 8.0,
          onSymptomTap: (symptom) {
            switch (symptom) {
              case AppText.cardiacIschaemia:
                print('Cardiac Ischaemia Tapped!');
                break;
              case AppText.aorticDissection:
                print('Aortic Dissection Tapped!');
                break;
              case AppText.gastrointestinal:
                print('Gastrointestinal Tapped!');
                break;
              case AppText.nsk:
                print('NSK Tapped!');
                break;
              case AppText.psychological:
                print('Psychological Tapped!');
                break;
              case AppText.headache:
                print('Headache Tapped!');
                break;
              case AppText.oxygenRequirement:
                print('Oxygen Requirement Tapped!');
                break;
              default:
                print('No route defined for: $symptom');
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15.0),
          child: GestureDetector(
            onTap: () {
              print('Calculate is tapped');
              _showNews2ScoreDialog(context); // Show the dialog on tap
            },
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.baseColor,
              ),
              child: Center(
                child: Text('Calculate',
                    style: AppTextStyles.bold
                        .copyWith(color: AppColors.txtBlackColor)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showNews2ScoreDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF00132B), // Dark blue background
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.txtOrangeColor, width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title: NEWS2 Score
              Center(
                child: Text(AppText.news2Score2,
                    style: AppTextStyles.bold.copyWith(fontSize: 25)),
              ),
              const SizedBox(height: 20),
              // Total NEWS2 Score
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total NEWS2 Score',
                      style: AppTextStyles.medium
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 18)),
                  Text('7',
                      style: AppTextStyles.medium
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 18)),
                ],
              ),
              const SizedBox(height: 10),
              // Risk Level
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Risk Level',
                      style: AppTextStyles.medium
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 18)),
                  Text('High',
                      style: AppTextStyles.medium
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 18)),
                ],
              ),
              const SizedBox(height: 20),
              // Action
              Text('Action',
                  style: AppTextStyles.medium.copyWith(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
              const SizedBox(height: 5),
              Text('Urgent clinical review and transfer to higher-level care',
                  style: AppTextStyles.regular),
              const SizedBox(height: 20),
              // Close Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEEC643), // Yellow button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Text('Close',
                      style: AppTextStyles.bold
                          .copyWith(color: AppColors.txtBlackColor)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
