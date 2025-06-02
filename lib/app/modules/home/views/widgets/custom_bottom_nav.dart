import 'package:flutter/material.dart';
import '../../../../../config/AppColors.dart';
import '../../../../../config/AppIcons.dart';
import '../../../../../config/AppText.dart';
import '../../../../../config/AppTextStyle.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(
            icon: AppIcons.search,
            label: AppText.search,
            index: 0,
          ),
          _buildNavItem(
            icon: AppIcons.like,
            label: AppText.favourites,
            index: 1,
          ),
          _buildNavItem(
            icon: AppIcons.recent,
            label: AppText.recent,
            index: 2,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String icon,
    required String label,
    required int index,
  }) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 35,
            height: 35,
            color:
                isSelected ? AppColors.txtOrangeColor : AppColors.txtWhiteColor,
          ),
          const SizedBox(height: 4),
          Text(label,
              style: AppTextStyles.regular.copyWith(
                fontSize: 13,
                color: isSelected
                    ? AppColors.txtOrangeColor
                    : AppColors.txtWhiteColor,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              )),
        ],
      ),
    );
  }
}
