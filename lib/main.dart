import 'package:flutter/material.dart';

import 'cookies/presentation/pages/home_screen.dart';
import 'core/constants/themes.dart';
import 'injection_container.dart' as di;
import 'route_generator.dart';

void main() {
  di.initServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookies',
      debugShowCheckedModeBanner: false,
      theme: setTheme(context),
      onGenerateRoute: GenerateRoutes.generateRoute,
      home: const HomeScreen(),
    );
  }
}
