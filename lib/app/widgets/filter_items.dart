import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/AppColors.dart';
import '../../config/AppIcons.dart';

class FilterItems extends StatefulWidget {
  const FilterItems({super.key});

  @override
  State<FilterItems> createState() => _FilterItemsState();
}

class _FilterItemsState extends State<FilterItems> {
  bool _isTapped = false;

  void _handleTap() {
    setState(() {
      _isTapped = true;
    });

    Get.bottomSheet(
      Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Wrap(
          children: [
            ListTile(
              leading: Image.asset(
                AppIcons.clinic,
                width: 30,
                height: 30,
                color: AppColors.txtBlackColor,
              ),
              title: const Text('Clinical Presentation'),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: Image.asset(
                AppIcons.test,
                width: 30,
                height: 30,
                color: AppColors.txtBlackColor,
              ),
              title: const Text('Biochemical Emergencies'),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: Image.asset(
                AppIcons.checkUp,
                width: 30,
                height: 30,
                color: AppColors.txtBlackColor,
              ),
              title: const Text('Clinical Diagnosis'),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: Image.asset(
                AppIcons.report,
                width: 30,
                height: 30,
                color: AppColors.txtBlackColor,
              ),
              title: const Text('News2 Score'),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.cancel,
                weight: 35,
              ),
              title: const Text('Clear'),
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    ).whenComplete(() {
      setState(() {
        _isTapped = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Icon(
        Icons.filter_list,
        size: 35,
        color: _isTapped ? AppColors.txtWhiteColor : AppColors.txtOrangeColor,
      ),
    );
  }
}
