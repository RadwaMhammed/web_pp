import 'package:flutter/material.dart';

class InFo extends StatelessWidget {
  const InFo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildConyactInfo(Title: 'Address', subTitle: 'zag_aboAldahab st 5'),
        buildConyactInfo(Title: 'Email', subTitle: 'hassan@gmail.com'),
        buildConyactInfo(Title: 'Country', subTitle: 'EGY'),
        buildConyactInfo(Title: 'Mobile', subTitle: '01018440919'),
        buildConyactInfo(Title: 'WebSite', subTitle: 'https//Daboos.com'),
      ],
    );
  }
}

Padding buildConyactInfo({required String Title, required String subTitle}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$Title",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "$subTitle",
        ),
      ],
    ),
  );
}