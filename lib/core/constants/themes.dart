import 'package:flutter/material.dart';
import 'package:webkeyz_task/core/constants/fonts.dart';

ThemeData setTheme(BuildContext context) => ThemeData(
      fontFamily: FontFamily.poppins,
      brightness: Brightness.dark,
      textTheme: Theme.of(context).textTheme.copyWith(
            titleLarge: const TextStyle(
              // fontSize: 42,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            titleMedium: const TextStyle(
              // fontSize: 28,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            bodyLarge: const TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            bodyMedium: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            bodySmall: const TextStyle(
              // fontSize: 28,
              // fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            displaySmall: const TextStyle(
              fontSize: 10,
              fontWeight: CustomFontWight.medium,
              color: Colors.white,
            ),
            displayMedium: const TextStyle(
              fontSize: 14,
              fontWeight: CustomFontWight.regular,
              color: Colors.white,
            ),
            displayLarge: const TextStyle(
              fontSize: 18,
              fontWeight: CustomFontWight.semiBold,
              color: Colors.white,
            ),
          ),
    );
