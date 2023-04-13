import 'package:flutter/material.dart';

import 'custom_button.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 520,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://webneel.com/daily/sites/default/files/images/daily/09-2019/2-movie-poster-design-aladdin-disney-glossy-composite.jpg"))),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButtonWidget(label: "My List", icon: Icons.add),
              PlayButton(),
              CustomButtonWidget(label: "Info", icon: Icons.info_outline),
            ],
          ),
        )
      ],
    );
  }

  TextButton PlayButton() {
    return TextButton.icon(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 15),
        backgroundColor: Colors.white,
      ),
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        size: 30,
        color: Colors.black,
      ),
      label: Text(
        "Play",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
