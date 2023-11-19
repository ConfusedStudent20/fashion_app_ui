import 'package:flutter/material.dart';
import 'package:fashion_ui/details_widget/ratings.dart';

class BrandImageShow extends StatefulWidget {
  final String image;
  final String name;
  final String price;

  const BrandImageShow({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  _BrandImageShowState createState() => _BrandImageShowState();
}

class _BrandImageShowState extends State<BrandImageShow> {
  int selectedIndex = -1; // Use -1 to represent no selection
  bool showAllRatings = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.fill,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                tileColor: Color.fromARGB(255, 246, 245, 245),
                title: Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                trailing: Text(
                  widget.price,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur avnr  but not the perspetibve  and it is fascinationg to do lot dipiscing elit.',
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Size',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.only(left: 8),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 8);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];
                    String sizeName = sizes[index];

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        width: 60,
                        child: Card(
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.white,
                          child: Center(
                            child: Text(
                              sizeName,
                              style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    'Reviews',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showAllRatings = !showAllRatings;
                      });
                    },
                    child: Text(showAllRatings ? 'Show less' : 'View all'),
                  ),
                ],
              ),
              RatingsList(showAll: showAllRatings),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 43,
            color: const Color.fromARGB(255, 134, 133, 133),
            width: double.maxFinite,
            child: Center(
              child: Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
