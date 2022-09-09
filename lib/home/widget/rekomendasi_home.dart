import 'package:flutter/material.dart';
import 'package:ugmresidance/model/house.dart';
import 'package:ugmresidance/screen/detail.dart';
import 'package:ugmresidance/widget/circle_icon.dart';

class RekomendasiHouse extends StatelessWidget {
  RekomendasiHouse({Key? key}) : super(key: key);

  final rekomendasiList = House.generateRecomended();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 340,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailPage(house: rekomendasiList[index]);
            }));
          },
          child: Container(
            height: 300,
            width: 230,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(rekomendasiList[index].imgurl),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white54,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rekomendasiList[index].name,
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            rekomendasiList[index].address,
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => SizedBox(
          width: 20,
        ),
        itemCount: rekomendasiList.length,
      ),
    );
  }
}
