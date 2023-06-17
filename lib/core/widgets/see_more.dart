import 'package:flutter/material.dart';
import 'package:webkeyz_task/core/constants/colors.dart';
import 'package:webkeyz_task/core/constants/fonts.dart';
import 'package:webkeyz_task/core/constants/styles.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "See More",
            style: TextStyle(
              fontSize: 12,
              fontWeight: CustomFontWight.semiBold,
              color: kAccentColor,
            ),
          ),
          kSmallHorizontalSpace,
          Icon(
            Icons.arrow_forward,
            color: kAccentColor,
            size: 16,
          )
        ],
      ),
    );
  }
}
