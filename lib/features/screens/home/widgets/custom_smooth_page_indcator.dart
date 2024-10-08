import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_colors.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: SlideEffect(
          spacing: 8.0,
          radius: 4.0,
          dotWidth: 8,
          dotHeight: 8,
          strokeWidth: 1.5,
          dotColor: Colors.grey.withOpacity(.5),
          activeDotColor: AppColor.mainColor.withOpacity(.5)),
    );
  }
}
