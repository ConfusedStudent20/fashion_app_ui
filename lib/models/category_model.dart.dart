class ImagesCategory {
  String name1;
  String name2;
  String name3;
  String image;
  ImagesCategory({
    required this.name1,
    required this.name2,
    required this.name3,
    required this.image,
  });
}

List<ImagesCategory> imagesList = [
  for (int i = 0; i <= 8; i++)
    ImagesCategory(
      name1: '${10 + i * 5}% Off',
      name2: 'Collection ${i + 1}',
      name3: 'Shop Now',
      image: 'assets/images/model${i + 1}.jpg',
    ),
];

class BrandCategory {
  String name;
  String image;
  BrandCategory({required this.name, required this.image});
}

List<BrandCategory> brandList = [
  BrandCategory(name: 'Nike', image: 'assets/images/brand1.jfif'),
  BrandCategory(name: 'Adidas', image: 'assets/images/brand2.jfif'),
  BrandCategory(name: 'Puma', image: 'assets/images/brand3.jfif'),
  BrandCategory(name: 'Gucci', image: 'assets/images/brand5.jfif'),
  BrandCategory(name: 'Levi\'s', image: 'assets/images/brand5.jfif'),
  BrandCategory(name: 'Zara', image: 'assets/images/brand6.jfif'),
  BrandCategory(name: 'H&M', image: 'assets/images/brand7.jfif'),
  BrandCategory(name: 'Chanel', image: 'assets/images/brand8.jfif'),
];

class BrandView {
  String image;
  String name;
  String price;
  BrandView({required this.image, required this.name, required this.price});
}

List<BrandView> brandViewList = [
  BrandView(
      image: 'assets/images/model1.jpg',
      name: 'Jeans Jacker',
      price: '\$ 20.00'),
  BrandView(
      image: 'assets/images/model2.jpg',
      name: 'Black Sweater',
      price: '\$ 30.00'),
  BrandView(
      image: 'assets/images/model3.jpg', name: 'Blue Shirt', price: '\$ 50.00'),
  BrandView(
      image: 'assets/images/model5.jpg',
      name: 'Brown Jacket',
      price: '\$ 50.00'),
  BrandView(
      image: 'assets/images/model5.jpg', name: 'Blue Suit', price: '\$ 60.00'),
  BrandView(
      image: 'assets/images/model6.jpg', name: 'Grey Suit', price: '\$ 70.00'),
  BrandView(
      image: 'assets/images/model7.jpg', name: 'Black suit', price: '\$ 80.00'),
  BrandView(
      image: 'assets/images/model8.jpg', name: 'Brown Suit', price: '\$ 90.00'),
];

class ReviewList {
  String name;
  String image;
  double rating;
  ReviewList({required this.name, required this.image, required this.rating});
}

List<ReviewList> reviewList = [
  ReviewList(
      name: 'John Wick', image: 'assets/images/model1.jpg', rating: 5),
  ReviewList(
      name: 'Randy Marshal', image: 'assets/images/model2.jpg', rating: 5),
  ReviewList(
      name: 'Virat Kohli', image: 'assets/images/model3.jpg', rating: 5),
  ReviewList(
      name: 'Lionel Messi ', image: 'assets/images/model5.jpg', rating: 5),
  ReviewList(
      name: 'Matt Shan', image: 'assets/images/model5.jpg', rating: 5),
  ReviewList(name: 'Lio Ray', image: 'assets/images/model6.jpg', rating: 5),
  ReviewList(
      name: 'Shawn  Mike', image: 'assets/images/model7.jpg', rating: 5),
  ReviewList(
      name: 'Michael James', image: 'assets/images/model8.jpg', rating: 5),
];
