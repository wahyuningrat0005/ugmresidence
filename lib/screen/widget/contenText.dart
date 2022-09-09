import 'package:flutter/material.dart';
import 'package:ugmresidance/model/house.dart';

class ContenText extends StatelessWidget {
  final House house;
  const ContenText({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            house.name,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            house.address,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "5000 ",
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: '\$500',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              TextSpan(
                  text: ' free month',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 16))
            ]),
          )
        ],
      ),
    );
  }
}
