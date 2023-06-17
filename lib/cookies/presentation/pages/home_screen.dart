import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webkeyz_task/cookies/domain/entities/offer.dart';
import 'package:webkeyz_task/cookies/presentation/manager/cookies_cubit.dart';
import 'package:webkeyz_task/cookies/presentation/pages/details_screen.dart';
import 'package:webkeyz_task/core/constants/colors.dart';
import 'package:webkeyz_task/core/constants/dimentions.dart';
import 'package:webkeyz_task/core/constants/fonts.dart';
import 'package:webkeyz_task/core/constants/styles.dart';
import 'package:webkeyz_task/core/enums/bottom_navigation_tabs.dart';
import 'package:webkeyz_task/core/widgets/cart_icon.dart';
import 'package:webkeyz_task/core/widgets/premium_label.dart';
import 'package:webkeyz_task/core/widgets/see_more.dart';
import 'package:webkeyz_task/injection_container.dart';

import '../../domain/entities/coockie.dart';

part '../widgets/home_screen_components/bottom_navigation_action.dart';
part '../widgets/home_screen_components/bottom_navigation_widget.dart';
part '../widgets/home_screen_components/cookie_card.dart';
part '../widgets/home_screen_components/cookies_premium_section.dart';
part '../widgets/home_screen_components/home_screen_body.dart';
part '../widgets/home_screen_components/home_screen_header.dart';
part '../widgets/home_screen_components/offers_card.dart';
part '../widgets/home_screen_components/offers_section.dart';
part '../widgets/home_screen_components/user_info.dart';

class HomeScreen extends StatelessWidget {
  static const homeScreenRoute = "/homeScreenRoute";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: BlocProvider<CookiesCubit>(
          create: (context) => engine<CookiesCubit>(),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [kBackgroundLightColor, kBackgroundDarkColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.loose,
                children: const [
                  HomeScreenBody(),
                  BottomNavigationWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
