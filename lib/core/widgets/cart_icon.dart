import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webkeyz_task/cookies/presentation/manager/cookies_cubit.dart';
import 'package:webkeyz_task/core/constants/colors.dart';
import 'package:webkeyz_task/core/constants/fonts.dart';
import 'package:webkeyz_task/core/constants/styles.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CookiesCubit, CookiesState>(
      buildWhen: (previousState, currentState) => currentState is CookiesUpdateCardState,
      builder: (context, state) {
        final cartItems = BlocProvider.of<CookiesCubit>(context).cartItems;
        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 82,
              width: 79,
              decoration: BoxDecoration(
                  color: kWidgetsLightBackgroundColor, borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      cartItems.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: CustomFontWight.semiBold,
                      ),
                    ),
                    Text(
                      cartItems > 1 ? "Products" : "Product",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: CustomFontWight.semiBold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -20,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/images/svgs/shopping-bag.svg"),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: cartItems > 0 ? 8 : 0,
                    width: cartItems > 0 ? 8 : 0,
                    decoration: const BoxDecoration(
                      color: kAccentColor,
                      shape: BoxShape.circle,
                    ),
                    child: kEmptyContainer,
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
