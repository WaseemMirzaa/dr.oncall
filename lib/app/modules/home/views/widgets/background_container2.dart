import 'package:flutter/material.dart';

import '../../../../../config/AppImages.dart';

class BackgroundContainer2 extends StatelessWidget {
  final Widget child;

  const BackgroundContainer2({
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
          image: AssetImage(AppImages.bg1),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
