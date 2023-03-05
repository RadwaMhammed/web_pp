import 'package:flutter/material.dart';
import '../../../constant.dart';
class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(hDefaultPadding * 3 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildIconInfo(
              icon: Icons.supervisor_account,
              numText: '+77',
              texttitle: 'Clients',
              context: context),
          BuildIconInfo(
              icon: Icons.location_on,
              numText: '139+',
              context: context,
              texttitle: 'Projects'),
          BuildIconInfo(
              icon: Icons.public,
              numText: '30+',
              context: context,
              texttitle: 'Countries'),
          BuildIconInfo(
              icon: Icons.star,
              numText: '13k+',
              context: context,
              texttitle: 'Stars'),
        ],
      ),
    );
  }
}

BuildIconInfo(
    {required IconData icon,
      required String numText,
      required String texttitle,
      required BuildContext context}) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.white,
        size: 50,
      ),
      Text(
        "$numText",
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: hPrimaryColor, fontSize: 30),
      ),
      Text(
        "$texttitle",
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ],
  );
}