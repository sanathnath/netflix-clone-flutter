import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: kradius10,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://webneel.com/daily/sites/default/files/images/daily/09-2019/32-movie-poster-design-serenity-relationship.jpg"))),
    );
  }
}
