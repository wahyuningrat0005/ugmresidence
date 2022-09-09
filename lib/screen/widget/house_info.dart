import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              MenuInfor(
                  imgurl: 'assets/icons/bedroom.svg',
                  conten: '5 bedroom\n3 master bedroom'),
              MenuInfor(
                  imgurl: 'assets/icons/bathroom.svg',
                  conten: '3 bathroom\n3 toilet')
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              MenuInfor(
                  imgurl: 'assets/icons/kitchen.svg',
                  conten: '3 kitchen\n 120sql'),
              SizedBox(
                height: 10,
              ),
              MenuInfor(
                  imgurl: 'assets/icons/parking.svg',
                  conten: '2 parking\n 120sql')
            ],
          )
        ],
      ),
    );
  }
}

class MenuInfor extends StatelessWidget {
  final String imgurl;
  final String conten;
  const MenuInfor({Key? key, required this.imgurl, required this.conten})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imgurl),
            SizedBox(
              width: 20,
            ),
            Text(
              conten,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
