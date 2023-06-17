import 'package:flutter/material.dart';
import 'package:webkeyz_task/cookies/presentation/pages/details_screen.dart';

import 'cookies/presentation/pages/home_screen.dart';

class GenerateRoutes {
  static _goTo(Widget screen, RouteSettings settings) =>
      MaterialPageRoute(builder: (context) => screen, settings: settings);

  // static _goToWithFade(Widget screen, RouteSettings settings) => PageRouteBuilder(
  //       pageBuilder: (c, a1, a2) => screen,
  //       transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
  //       transitionDuration: const Duration(milliseconds: 300),
  //       settings: settings,
  //     );

  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic>? args = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
      case DetailsScreen.detailsScreenRoute:
        return _goTo(DetailsScreen(cookie: args!["cookie"]), settings);

      default:
        return _goTo(const HomeScreen(), settings);
    }
  }
}
