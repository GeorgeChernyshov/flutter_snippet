import 'package:flutter/material.dart';
import 'package:flutter_snippet/ui/typography.dart';

const craneCaption = Color.fromARGB(255, 68, 68, 68);
const craneDividerColor = Color.fromARGB(255, 132, 132, 132);
const craneRed = Color(0xFFE30425);
const craneWhite = Colors.white;
const cranePurple_700 = Color(0xFF720D5D);
const cranePurple_800 = Color(0xFF5D1049);
const cranePurple_900 = Color(0xFF4E0D3A);

const craneColors = ColorScheme.light(
    primary: cranePurple_800,
    secondary: craneRed,
    surface: cranePurple_900,
    onSurface: craneWhite,
    primaryContainer: cranePurple_700
);

const BottomSheetShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
);

var craneTheme = ThemeData(
  useMaterial3: true,
  colorScheme: craneColors,
  textTheme: craneTypography
);