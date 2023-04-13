import 'package:flutter/material.dart';

import '../../widgets/main_title.dart';
import 'number_card.dart';

class TopTenList extends StatelessWidget {
  const TopTenList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 TV Shows In India Today"),
        SizedBox(
          height: 20,
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
            separatorBuilder: (cnxt, index) => SizedBox(
              width: 0,
            ),
            itemBuilder: (cnxt, index) => NumberCard(
              index: index,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
