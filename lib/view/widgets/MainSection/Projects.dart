import 'package:flutter/material.dart';
import '../../../Responsive.dart';
import '../../../constant.dart';
import '../../../model/demoproject.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(hDefaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(hDefaultPadding / 4),
            child: Text("Our Projects",
                style: Theme.of(context).textTheme.headline6),
          ),
          buildGridView(
              context: context,
              GitemCount: demoProjectlist.length,
              GitemBuilder: (context, index) {
                return Container(
                  color: hSecondaryColor,
                  padding: EdgeInsets.all(hDefaultPadding),
                  child: Column(
                    children: [
                      Image.asset(
                        "${demoProjectlist[index].image}",
                      ),
                      SizedBox(
                        height: hDefaultPadding,
                      ),
                      Text(
                        "${demoProjectlist[index].Title}",
                        maxLines: 2,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        height: hDefaultPadding,
                      ),
                      Text(
                        "${demoProjectlist[index].Descraption}",
                        maxLines: Responsive.isDesktop(context) ? 2 : 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            height: Responsive.isDesktop(context) ? 1.7 : 0),
                      ),
                      SizedBox(
                        height: hDefaultPadding,
                      ),
                      Text(
                        "More Info..",
                        style: TextStyle(color: hPrimaryColor),
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}

buildGridView({required int GitemCount, var GitemBuilder, var context}) {
  return GridView.builder(
    shrinkWrap: true,
    itemCount: GitemCount,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isDesktop(context)
            ? 3
            : Responsive.isMobile(context)
            ? 1
            : 2,
        mainAxisSpacing: hDefaultPadding,
        crossAxisSpacing: hDefaultPadding,
        childAspectRatio: 0.75),
    itemBuilder: GitemBuilder,
  );
}