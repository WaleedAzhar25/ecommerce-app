import 'package:ecommerce_app/constant/images.dart';

class OrderHistoryModel{
  String image;
  String title;
  String process;
  String day;
  String time;
  int price;

  OrderHistoryModel({required this.image,required this.process,required this.day,required this.time,required this.price,required this.title});
}

List<OrderHistoryModel> listOrderHistory=[
  OrderHistoryModel(image: AppImages.trackingCart1, process: 'Waiting for payment', day: 'Today', time: '02:30 pm', price: 3506, title: 'Girl Jacket 46'),
  OrderHistoryModel(image: AppImages.trackingCart1, process: 'Waiting for payment', day: 'Today', time: '02:30 pm', price: 3506, title: 'Girl Jacket 46'),
  OrderHistoryModel(image: AppImages.trackingCart1, process: 'Waiting for payment', day: 'Today', time: '02:30 pm', price: 3506, title: 'Girl Jacket 46'),
  OrderHistoryModel(image: AppImages.trackingCart1, process: 'Waiting for payment', day: 'Today', time: '02:30 pm', price: 3506, title: 'Girl Jacket 46'),

];