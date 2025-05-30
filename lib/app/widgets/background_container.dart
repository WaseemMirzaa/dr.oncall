import 'package:flutter/material.dart';
import '../../config/AppImages.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;

  const BackgroundContainer({
    Key? key,
    required this.child, // 👈 allows you to pass content inside the background
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.bg2Copy),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
