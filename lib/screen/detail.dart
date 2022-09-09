import 'package:flutter/material.dart';
import 'package:ugmresidance/model/house.dart';
import 'package:ugmresidance/screen/widget/about.dart';
import 'package:ugmresidance/screen/widget/contenText.dart';
import 'package:ugmresidance/screen/widget/detail_app.dart';
import 'package:ugmresidance/screen/widget/house_info.dart';

class DetailPage extends StatelessWidget {
  final House house;
  const DetailPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailApp(house: house),
            SizedBox(
              height: 20,
            ),
            ContenText(house: house),
            SizedBox(
              height: 20,
            ),
            HouseInfo(),
            SizedBox(
              height: 20,
            ),
            About(),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      primary: Theme.of(context).primaryColor),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Book Now",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
