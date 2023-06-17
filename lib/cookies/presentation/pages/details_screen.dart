import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webkeyz_task/cookies/presentation/manager/cookies_cubit.dart';
import 'package:webkeyz_task/core/constants/dimentions.dart';
import 'package:webkeyz_task/core/constants/fonts.dart';
import 'package:webkeyz_task/core/constants/styles.dart';
import 'package:webkeyz_task/core/widgets/add_to_order_icon.dart';
import 'package:webkeyz_task/core/widgets/cart_icon.dart';
import 'package:webkeyz_task/core/widgets/premium_label.dart';
import 'package:webkeyz_task/injection_container.dart';

import '../../domain/entities/coockie.dart';

part '../widgets/details_screen_components/cookie_details_section.dart';
part '../widgets/details_screen_components/details_screen_body.dart';
part '../widgets/details_screen_components/details_screen_header.dart';

class DetailsScreen extends StatelessWidget {
  static const detailsScreenRoute = "/detailsScreenRoute";

  const DetailsScreen({Key? key, required this.cookie}) : super(key: key);
  final Cookie cookie;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: BlocProvider<CookiesCubit>.value(
          value: engine<CookiesCubit>(),
          child: Stack(
            children: [
              Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/pngs/Cookies_Image.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/images/svgs/Gradient.svg", fit: BoxFit.cover)
                ],
              ),
              SafeArea(child: DetailsScreenBody(cookie: cookie))
            ],
          ),
        ),
      ),
    );
  }
}
