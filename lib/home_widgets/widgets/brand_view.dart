import 'package:fashion_ui/models/category_model.dart.dart';
import 'package:flutter/material.dart';

class BrandBannerView extends StatefulWidget {
  const BrandBannerView({Key? key}) : super(key: key);

  @override
  State<BrandBannerView> createState() => _BrandBannerViewState();
}

class _BrandBannerViewState extends State<BrandBannerView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            brandList.length,
            (index) => Container(
              margin: const EdgeInsets.only(right: 15),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 31,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            brandList[index].image,
                            width: double
                                .maxFinite, // Adjust the width to fit your needs
                            height: double
                                .maxFinite, // Adjust the height to fit your needs
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    brandList[index].name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
