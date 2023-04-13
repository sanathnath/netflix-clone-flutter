import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Image.network(
        "https://images.indianexpress.com/2022/06/Jailer-concept-poster-1200by667.jpg?w=640",
        fit: BoxFit.cover,
      ),
    );
  }
}
