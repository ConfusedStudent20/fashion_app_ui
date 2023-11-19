import 'package:fashion_ui/details_widget/image_show.dart';
import 'package:flutter/material.dart';
import 'package:fashion_ui/models/category_model.dart.dart';

class BrandContentShow extends StatefulWidget {
  const BrandContentShow({Key? key}) : super(key: key);

  @override
  State<BrandContentShow> createState() => _BrandContentShowState();
}

class _BrandContentShowState extends State<BrandContentShow> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: brandList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0, // spacing between columns
        mainAxisSpacing: 2.0,
        mainAxisExtent: 290.0,
        // spacing between rows
      ),
      itemBuilder: (BuildContext context, index) {
        return Container(
          //  color: Colors.pink,
          padding: EdgeInsets.all(8),
          child: Card(
            color: Color.fromARGB(255, 243, 235, 235),
            elevation: 6.0,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return BrandImageShow(
                      image: brandViewList[index].image,
                      name: brandViewList[index].name,
                      price: brandViewList[index].price,
                    );
                  }),
                );
              },
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(4.0),
                    height: 200,
                    width: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        brandViewList[index].image,
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.srcOver,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    brandViewList[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    brandViewList[index].price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
