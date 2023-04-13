import 'package:flutter/material.dart';

import '../../home/widgets/custom_button.dart';
import '../../widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        VideoWidget(),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  CustomButtonWidget(
                    icon: Icons.send_outlined,
                    label: "Share",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomButtonWidget(
                    icon: Icons.add,
                    label: "My List",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomButtonWidget(
                    icon: Icons.play_arrow,
                    label: "Play",
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Jailer",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "some description adfjdklfj fds fsf g griu uiu i uiert  jldf  erqer fjdkjf fdjfhf fdh f hdjkfh hfjdhfhf fjjhdfjh fjhdfjh",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
