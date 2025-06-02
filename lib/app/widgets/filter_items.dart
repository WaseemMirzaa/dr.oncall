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
              leading: const Icon(Icons.category),
              title: const Text('Filter by Category'),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Filter by List'),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: Image.asset(
                AppIcons.heart,
                width: 26,
                height: 26,
                color: AppColors.txtBlackColor,
              ),
              title: const Text('Filter by Favorites'),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.cancel),
              title: const Text('Cancel'),
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    ).whenComplete(() {
      setState(() {
        _isTapped = false; // Reset when bottom sheet is closed
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
