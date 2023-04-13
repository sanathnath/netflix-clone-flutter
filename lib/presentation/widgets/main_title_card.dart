import 'package:flutter/material.dart';

import 'main_card.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(title: title),
          SizedBox(
            height: 20,
          ),
          LimitedBox(
            maxHeight: 200,
            child: ListView.separated(
              separatorBuilder: (cnxt, index) => SizedBox(
                width: 0,
              ),
              itemBuilder: (cnxt, index) => MainCard(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
