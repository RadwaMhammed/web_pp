import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../model/Recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(hDefaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(hDefaultPadding / 2),
            child: Text("Recommendations",
                style: Theme.of(context).textTheme.headline6),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics:const ScrollPhysics(),

            child: Row(
              children: List.generate(
                  demoRecommendation.length,
                      (index) => Padding(
                    padding: EdgeInsets.only(
                      right: hDefaultPadding,
                    ),
                    child: Container(
                      width: 400,
                      color: hSecondaryColor,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              demoRecommendation[index].name!,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            subtitle: Text(
                              demoRecommendation[index].source!,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            leading: CircleAvatar(
                              backgroundColor: hPrimaryColor,
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "${demoRecommendation[index].image}"),
                            ),
                          ),
                          SizedBox(
                            height: hDefaultPadding / 2,
                          ),
                          Text(
                            demoRecommendation[index].text!,
                            maxLines: 4,
                            style: TextStyle(height: 1.5),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}