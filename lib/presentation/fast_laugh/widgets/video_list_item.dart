import 'package:flutter/material.dart';

class VideoListItemWidget extends StatelessWidget {
  const VideoListItemWidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://pbs.twimg.com/media/Ec_7SzOUEAAuGit?format=jpg&name=900x900"),
                      ),
                    ),
                    VideoActionsWidget(
                        icon: Icons.emoji_emotions, title: "LOL"),
                    VideoActionsWidget(icon: Icons.add, title: "My List"),
                    VideoActionsWidget(
                        icon: Icons.send_outlined, title: "Share"),
                    VideoActionsWidget(icon: Icons.play_arrow, title: "Play"),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
