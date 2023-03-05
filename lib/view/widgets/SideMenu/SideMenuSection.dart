import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant.dart';
import 'Goals.dart';
import 'Logo.dart';
import 'info.dart';
class SideMenuSection extends StatefulWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  State<SideMenuSection> createState() => _SideMenuSectionState();
}
class _SideMenuSectionState extends State<SideMenuSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Logo(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InFo(),
                Divider(
                  endIndent: 5,
                  indent: 5,
                ),
                Goals(),
                Divider(
                  endIndent: 5,
                  indent: 5,
                ),
                SizedBox(
                  height: hDefaultPadding / 2,
                ),
                TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(hDefaultPadding / 2),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/download.svg"),
                            SizedBox(
                              width: hDefaultPadding / 2,
                            ),
                            Text(
                              "Download Brochure",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            )
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  height: hDefaultPadding / 2,
                ),
                Container(
                  color: hSecondaryColor,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/github.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/dribble.svg")),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: hDefaultPadding / 2,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}