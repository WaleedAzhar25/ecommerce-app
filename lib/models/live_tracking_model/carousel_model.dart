import 'package:ecommerce_app/constant/images.dart';

class CarouselModel{
  String image;
  String title;
  double price;

  CarouselModel({required this.image,required this.title,required this.price});
}
List<CarouselModel> listCarousel=[
  CarouselModel(image: AppImages.carousel1, title: 'Curated Gift Hampers', price: 2000),
  CarouselModel(image: AppImages.carousel1, title: 'Curated Gift Hampers', price: 2000),
  CarouselModel(image: AppImages.carousel1, title: 'Curated Gift Hampers', price: 2000),
];