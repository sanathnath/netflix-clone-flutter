import 'package:flutter/material.dart';

import '../../home/widgets/custom_button.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
              Text(
                "11",
                style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 450,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 20),
                child: Row(
                  children: [
                    Text(
                      "Title",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CustomButtonWidget(
                          icon: Icons.notifications_outlined,
                          label: "Remind Me",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomButtonWidget(
                          icon: Icons.info_outline,
                          label: "Info",
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Text("Coming on Friday"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Tall Girl 2",
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
              )
            ],
          ),
        )
      ],
    );
  }
}
