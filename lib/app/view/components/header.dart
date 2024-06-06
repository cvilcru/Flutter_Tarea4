import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xFF4A4A4A)),
      ),
      height: 200,
      color: Color(0x4DFFE84A),
      alignment: Alignment.center,
    );
  }
}
