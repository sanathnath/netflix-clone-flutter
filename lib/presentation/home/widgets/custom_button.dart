import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key, required this.label, required this.icon})
      : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
