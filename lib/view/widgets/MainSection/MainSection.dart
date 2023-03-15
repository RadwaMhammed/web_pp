import 'package:flutter/material.dart';

import 'HomeBanner.dart';
import 'IconInfo.dart';
import 'Projects.dart';
import 'Recommendations.dart';

class MainSectionScreen extends StatefulWidget {
  const MainSectionScreen({Key? key}) : super(key: key);

  @override
  State<MainSectionScreen> createState() => _MainSectionScreenState();
}

class _MainSectionScreenState extends State<MainSectionScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeBanner(),
          IconInfo(),
          Projects(),
          Recommendations(),
        ],
      ),
    );
  }
}