import '../../constant/images.dart';

class LiveTrackingCart{
  String image;
  String title;
  String size;
  String color;
  double price;
  int count;

  LiveTrackingCart({
      required this.image, required this.title, required this.size, required this.color, required this.price, required this.count});
}

List<LiveTrackingCart> trackingCartList=[
  LiveTrackingCart(image: AppImages.trackingCart1, title: 'Girl Jacket 46', size: 'XL', color: 'Red', price: 35.06, count: 1),
  LiveTrackingCart(image: AppImages.trackingCart2, title: 'Apple Watch', size: 'L', color: 'Black', price: 361.74, count: 1),
  LiveTrackingCart(image: AppImages.trackingCart3, title: 'Nike Air Force', size: '42', color: 'White', price: 149.99, count: 1),
];
