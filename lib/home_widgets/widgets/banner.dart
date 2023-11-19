import 'package:fashion_ui/details_widget/image_show.dart';
import 'package:fashion_ui/models/category_model.dart.dart';
import 'package:flutter/material.dart';

class BuildFavBanner extends StatefulWidget {
  const BuildFavBanner({Key? key}) : super(key: key);

  @override
  State<BuildFavBanner> createState() => _BuildFavBannerState();
}

class _BuildFavBannerState extends State<BuildFavBanner> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          imagesList.length,
          (index) => Padding(
            padding: const EdgeInsets.all(14.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 180,
                width: 330,
                color: Color.fromARGB(255, 123, 121, 121),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            imagesList[index].name1,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            imagesList[index].name2,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Chip(
                              padding: EdgeInsets.all(6),
                              label: Text(
                                imagesList[index].name3,
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 228, 135, 135),
                                ),
                              ),
                              side: BorderSide.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return BrandImageShow(
                                  image: brandViewList[index].image,
                                  name: brandViewList[index].name,
                                  price: brandViewList[index].price);
                            }),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            imagesList[index].image,
                            height: 150,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
