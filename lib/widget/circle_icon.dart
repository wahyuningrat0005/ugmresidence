import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIcon extends StatelessWidget {
  final String iconurl;
  final Color color;
  const CircleIcon({Key? key, required this.iconurl,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
      ),
      child: SvgPicture.asset(iconurl),
    );
  }
}
