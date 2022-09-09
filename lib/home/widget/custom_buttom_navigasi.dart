import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigasiBar extends StatelessWidget {
  CustomBottomNavigasiBar({Key? key}) : super(key: key);
  final bottomItem = [
    'home',
    'home_search',
    'notification',
    'chat',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: bottomItem
            .map((e) => SvgPicture.asset(
                  'assets/icons/$e.svg',
                  color: Theme.of(context).primaryColor,
                ))
            .toList(),
      ),
    );
  }
}
