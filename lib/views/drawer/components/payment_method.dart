import 'package:ecommerce_app/constant/height.dart';
import 'package:ecommerce_app/constant/icons.dart';
import 'package:ecommerce_app/constant/textsize.dart';
import 'package:ecommerce_app/constant/width.dart';
import 'package:ecommerce_app/views/drawer/components/payment_icons_widget.dart';
import 'package:ecommerce_app/views/drawer/components/payment_method_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constant/colors.dart';
import '../../../models/drawer_models/order_history_model.dart';
import '../../../models/drawer_models/payment_method_card_model.dart';
import '../../../utils/size_config.dart';
class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);
  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}
class _PaymentMethodState extends State<PaymentMethod> {
  final controller = PageController(viewportFraction: 0.85, keepPage: true);
  final pages = List.generate(
    listPaymentMethodCard.length,
        (index) => PaymentMethodCard(
      image: listPaymentMethodCard[index].image,
      title: listPaymentMethodCard[index].title,
      price: listPaymentMethodCard[index].price,
      num: listPaymentMethodCard[index].number,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        title:Text('Payment Method',
          style: GoogleFonts.poppins(
            fontSize: AppTexts.size14,
            color: AppColors.primarydarkColor,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),),
        centerTitle: true,
        leading:  IconButton(onPressed: (){
          Get.back();
        },
            icon:  Icon(Icons.arrow_back_ios,color: Colors.black,size: SizeConfig.imageSizeMultiplier*5,)),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(height: SizeConfig.heightMultiplier*2,),
            SizedBox(
              height: AppHeights.height207,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                padEnds: false,
                controller: controller,
                itemCount: pages.length,
                itemBuilder: (BuildContext context, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier*3,),
            SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: WormEffect(
                activeDotColor:AppColors.primarylightColor,
                dotColor: Colors.blueGrey.withOpacity(0.3),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier*2,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppWidths.width25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PaymentIconsWidget(image: AppIcons.transfer,),
                      PaymentIconsWidget(image: AppIcons.receive,),
                      PaymentIconsWidget(image: AppIcons.topup,),
                      PaymentIconsWidget(image: AppIcons.bill,),
                    ],
                  ),
                   SizedBox(height: AppHeights.height27),
                  Text('Recent transactions',
                    style: GoogleFonts.sourceSansPro(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: AppTexts.size16
                    ),),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: listOrderHistory.length,
                      itemBuilder: (BuildContext context,i){
                        return Padding(
                          padding:  EdgeInsets.only(top: SizeConfig.heightMultiplier*2.2),
                          child: Row(
                            children: [
                              Container(
                                height: SizeConfig.heightMultiplier*8.3,
                                width: SizeConfig.widthMultiplier*18.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(listOrderHistory[i].image,),
                                      fit: BoxFit.fill
                                  ),
                                  borderRadius: BorderRadius.circular(AppWidths.width15),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*2.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(listOrderHistory[i].title,style: GoogleFonts.sourceSansPro(
                                      fontSize: AppTexts.size14,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    SizedBox(height: SizeConfig.heightMultiplier*0.5,),
                                    Text('${listOrderHistory[i].day} ${listOrderHistory[i].time}',style: GoogleFonts.sourceSansPro(
                                      fontSize: AppTexts.size12,
                                      color: const Color(0xffAE9A99),
                                      fontWeight: FontWeight.w400,
                                    ),),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Text('-₹${listOrderHistory[i].price}',style: GoogleFonts.sourceSansPro(
                                fontSize: AppTexts.size16,
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                              ),),
                            ],
                          ),
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

