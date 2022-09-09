import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ugmresidance/model/house.dart';

class DetailApp extends StatelessWidget {
  final House house;
  const DetailApp({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        child: Stack(children: [
          Image.asset(
            house.imgurl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 20,
                padding: EdgeInsets.all(15),
              )
            ],
          )),
        ]));
  }
}
