class AllCartCheckOutModel{
  String image;
  String company;
  String color;
  int size;
  int price;
  int value;

  AllCartCheckOutModel({
      required this.image, required this.company,required this.color,required this.size,required this.price,this.value=1});
}

List<AllCartCheckOutModel> listAllCart=[
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
  AllCartCheckOutModel(image: 'assets/images/shoe.png', company: 'Adidas', color: 'Grey', size: 42, price: 23500),
];