import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webkeyz_task/core/constants/colors.dart';
import 'package:webkeyz_task/core/constants/fonts.dart';
import 'package:webkeyz_task/core/constants/styles.dart';

class PremiumLabel extends StatelessWidget {
  const PremiumLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/images/svgs/Crown_Icon.svg"),
        kSmallHorizontalSpace,
        const Text(
          "PREMIUM",
          style: TextStyle(
            fontSize: 12,
            fontWeight: CustomFontWight.regular,
            color: kAccentColor,
          ),
        ),
      ],
    );
  }
}
