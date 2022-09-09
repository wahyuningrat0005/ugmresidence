import 'package:flutter/material.dart';
import 'package:ugmresidance/home/widget/best_offer.dart';
import 'package:ugmresidance/home/widget/categories.dart';
import 'package:ugmresidance/home/widget/custom_appbar.dart';
import 'package:ugmresidance/home/widget/custom_buttom_navigasi.dart';
import 'package:ugmresidance/home/widget/rekomendasi_home.dart';
import 'package:ugmresidance/home/widget/search.dart';
import 'package:ugmresidance/home/widget/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextBar(),
            SearchInput(),
            Recomended(),
            RekomendasiHouse(),
            BestOffer()
            
          ],
        ),
      ),
      bottomNavigationBar:CustomBottomNavigasiBar(),
    );
  }
}
