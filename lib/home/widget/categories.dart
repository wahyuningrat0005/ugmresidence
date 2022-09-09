import 'package:flutter/material.dart';

class Recomended extends StatefulWidget {
  const Recomended({Key? key}) : super(key: key);

  @override
  State<Recomended> createState() => _RecomendedState();
}

class _RecomendedState extends State<Recomended> {
  final categorieList = [
    'Top Recomended',
    'Near You',
    'Agency Recomended',
    'Most Popular',
  ];
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentSelect == index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: currentSelect == index
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                  width: 3,
                ),
              ),
            ),
            child: Text(
              categorieList[index],
              style: TextStyle(
                  color: currentSelect == index
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: currentSelect == index ? 14 : 16,
                  fontWeight: currentSelect == index
                      ? FontWeight.bold
                      : FontWeight.normal),
            ),
          ),
        ),
        separatorBuilder: (_, index) => SizedBox(
          width: 15,
        ),
        itemCount: categorieList.length,
      ),
    );
  }
}
