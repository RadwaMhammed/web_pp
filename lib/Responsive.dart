import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }
  final Widget desktop;
  final Widget tablet;
  final Widget mobileLarge;
  final Widget mobile;

  Responsive({
    required this.desktop,
    required this.tablet,
    required this.mobileLarge,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size.width;

    if (_size >= 1024) {
      return desktop;
    } else if (_size >= 700) {
      return tablet;
    } else if (_size >= 500) {
      return mobileLarge;
    } else {
      return mobile;
    }
  }
}