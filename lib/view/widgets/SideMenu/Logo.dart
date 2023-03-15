
import 'package:flutter/material.dart';

import '../../../constant.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
          color: hSecondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(
                flex: 2,
              ),
              Image(
                image: AssetImage(
                  "$logo",
                ),
                width: 100,
              ),
              const Spacer(),
              Text(
                "Real Estate",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const Text(
                "Modern Home \nGreate Interior Design",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          )),
    );
  }
}