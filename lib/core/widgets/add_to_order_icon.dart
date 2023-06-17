import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webkeyz_task/cookies/presentation/manager/cookies_cubit.dart';
import 'package:webkeyz_task/core/constants/colors.dart';
import 'package:webkeyz_task/core/constants/dimentions.dart';
import 'package:webkeyz_task/core/constants/fonts.dart';
import 'package:webkeyz_task/core/constants/styles.dart';

class AddToOrderIcon extends StatelessWidget {
  const AddToOrderIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => BlocProvider.of<CookiesCubit>(context).addToCart(),
      child: Container(
        width: 80,
        padding: const EdgeInsets.all(kMediumPadding),
        decoration: BoxDecoration(
          color: kWidgetsLightBackgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset("assets/images/svgs/box-add.svg"),
              ),
              kSmallVerticalSpace,
              Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: kAccentColor,
                  shape: BoxShape.circle,
                ),
                child: kEmptyContainer,
              ),
              kSmallVerticalSpace,
              const Text(
                "Add to Order",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: CustomFontWight.semiBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
