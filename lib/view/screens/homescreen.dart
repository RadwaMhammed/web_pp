import 'package:flutter/material.dart';

import '../../Responsive.dart';
import '../../constant.dart';
import '../widgets/MainSection/MainSection.dart';
import '../widgets/SideMenu/SideMenuSection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (Responsive.isDesktop(context))
          ? null
          : AppBar(
        backgroundColor: hBgColor,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu));
        }),
      ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            // constraints: BoxConstraints(maxWidth: 2460.0, minWidth: 20),
            child: Row(
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                      flex: 2,
                      child:
                      Container(color: hBgColor, child: SideMenuSection())),
                Expanded(flex: 7, child: Container(child: MainSectionScreen())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}