import 'package:flutter/material.dart';

class Spacing {
  // TODO : Spacing Horizontal
  static const Widget h4 = SizedBox(width: 4);
  static const Widget h8 = SizedBox(width: 8);
  static const Widget h12 = SizedBox(width: 12);
  static const Widget h16 = SizedBox(width: 16);
  static const Widget h20 = SizedBox(width: 20);
  static const Widget h24 = SizedBox(width: 24);
  static const Widget h32 = SizedBox(width: 32);
  static const Widget h40 = SizedBox(width: 40);
  static const Widget h48 = SizedBox(width: 48);

  // TODO : Spacing Vertical
  static const Widget v4 = SizedBox(height: 4);
  static const Widget v8 = SizedBox(height: 8);
  static const Widget v12 = SizedBox(height: 12);
  static const Widget v16 = SizedBox(height: 16);
  static const Widget v20 = SizedBox(height: 20);
  static const Widget v24 = SizedBox(height: 24);
  static const Widget v32 = SizedBox(height: 32);
  static const Widget v40 = SizedBox(height: 40);
  static const Widget v48 = SizedBox(height: 48);

  // TODO : Custom Spacing
  static SizedBox width(double w) => SizedBox(width: w);
  static SizedBox height(double h) => SizedBox(height: h);
}