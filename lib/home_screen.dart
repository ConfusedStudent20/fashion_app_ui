import 'package:fashion_ui/home_widgets/widgets/app_bar.dart';
import 'package:fashion_ui/home_widgets/widgets/banner.dart';
import 'package:fashion_ui/home_widgets/widgets/brand_photo.dart';
import 'package:fashion_ui/home_widgets/widgets/brand_view.dart';
import 'package:fashion_ui/home_widgets/widgets/category_title.dart';
import 'package:fashion_ui/home_widgets/widgets/search_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 89),
        child: buildAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildSearchBar(),
            BuildFavBanner(),
            buildCatTitle(),
            BrandBannerView(),
            SizedBox(
              height: 20,
            ),
            BrandContentShow(),
          ],
        ),
      ),
      extendBody: true,
    );
  }
}
