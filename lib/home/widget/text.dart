import 'package:flutter/material.dart';

class TextBar extends StatelessWidget {
  const TextBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello Wahyu",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Text("Find Your Sweet Home",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
