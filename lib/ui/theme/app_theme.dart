// ignore_for_file: sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

part 'text_theme.dart';
part 'light_theme.dart';
part 'dark_theme.dart';

// AppTheme inspired by: https://github.com/gskinnerTeam/flokk
// The main exception is that we're using Get instead of Provider for AppTheme
// Thus, we use the ThemeController to directly call AppTheme
// and context.textTheme (instead of Get.textTheme) to ensure the theme is mutable
enum ThemeType {
  Light,
  Dark,
}

ThemeData appTheme({ThemeType t}) {
  switch (t) {
    case ThemeType.Dark:
      return darkTheme;
    default:
      return lightTheme;
  }
}
