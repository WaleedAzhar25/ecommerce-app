import 'package:ecommerce_app/constant/images.dart';

class PaymentMethodCardModel{
  String image;
  String title;
  double price;
  int number;

  PaymentMethodCardModel({required this.image,required this.title,required this.price,required this.number});
}
List<PaymentMethodCardModel> listPaymentMethodCard=[
  PaymentMethodCardModel(image: AppImages.paymentCard1, title: 'Joshua Gillani', price: 2000, number: 4567),
  PaymentMethodCardModel(image: AppImages.paymentCard1, title: 'Joshua Gillani', price: 2000,number: 5674),
  PaymentMethodCardModel(image: AppImages.paymentCard1, title: 'Joshua Gillani', price: 2000,number: 5674),
];