import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: kradius10,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://webneel.com/daily/sites/default/files/images/daily/09-2019/32-movie-poster-design-serenity-relationship.jpg"))),
            ),
          ],
        ),
        Positioned(
          bottom: -32,
          right: 125,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: Colors.white,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                fontSize: 150,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        )
      ],
    );
  }
}
