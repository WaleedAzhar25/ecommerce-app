import 'package:ecommerce_app/constant/colors.dart';
import 'package:ecommerce_app/constant/icons.dart';
import 'package:ecommerce_app/constant/images.dart';
import 'package:ecommerce_app/constant/padding.dart';
import 'package:ecommerce_app/constant/textsize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/height.dart';
import '../../constant/radius.dart';
import '../../constant/width.dart';
import '../../utils/size_config.dart';
import '../widgets/auth_input_text_field.dart';
import '../../../../demo/lib/widgets/custom_text_button.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: SizeConfig.imageSizeMultiplier * 5,
            color: Colors.black,
          ),
        ), //size5
        title: Row(
          children: [
            const Spacer(),
            Text(
              'Cart',
              style: TextStyle(
                color: AppColors.primarydarkColor,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            const Spacer(),
            Text(
              'Store Policy',
              style: TextStyle(
                color: AppColors.primarylightColor,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppHeights.height10,
                ),
                Text(
                  "Shipping Address",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: AppTexts.size14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: AppHeights.height10,
                ),
                SizedBox(
                  height: AppHeights.height235,
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    shadowColor: Colors.blueGrey.withOpacity(0.4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  borderRadius:
                                      BorderRadius.circular(AppRadius.radius8),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(AppIcons.home),
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.widthMultiplier*1,
                              ),
                              Text(
                                'My home',
                                style: TextStyle(
                                  fontSize: AppTexts.size14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(
                                      fontSize: AppTexts.size12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                                  )),
                            ],
                          ),
                          Text(
                            "Joshua Gillani",
                            style: TextStyle(
                              fontSize: AppTexts.size12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height:SizeConfig.heightMultiplier*0.3,
                          ),
                          Text(
                            "+62 8888 7777",
                            style: TextStyle(
                              fontSize: AppTexts.size12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                           SizedBox(
                            height: AppHeights.height20,
                          ),
                          Text(
                            "27 Independence Street, Sukamulya, Cikembar, Sukabumi, Jawa Barat 43157",
                            style: TextStyle(
                              fontSize: AppTexts.size12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: AppHeights.height25,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: AppHeights.height50,
                              width: AppWidths.width267,
                              child: ElevatedButton(
                                  onPressed: () {
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(AppPaddings.padding15))),
                                    primary: AppColors.primarylightColor,
                                  ),
                                  child: Text(
                                    'Choose another address',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: AppTexts.size14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppHeights.height10,
                ),
                Text(
                  "Special Intruction",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: AppTexts.size14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: AppHeights.height10,
                ),
                SizedBox(
                  width: AppWidths.widthFull,
                  child:AuthTextInputField(
                    radius: AppWidths.width15,
                    bordercolor: Colors.black,
                    maxLine: 2,
                    contentpadding: EdgeInsets.only(bottom: 10,left: AppPaddings.padding18,top: AppPaddings.padding18),
                    hintText: 'e.g: “No Straw” (Optional)',
                    isoutline: true,
                    hintSize: SizeConfig.textMultiplier*1.6,
                  ),

                ),
                Text(
                  "Voucher",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: AppTexts.size14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: AppHeights.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: SizeConfig.widthMultiplier*62,
                      child:AuthTextInputField(
                        radius: AppWidths.width15,
                        bordercolor: Colors.black,
                        hintText: 'Enter your code',
                        isoutline: true,
                        hintSize: SizeConfig.textMultiplier*1.6,
                      ),
                    ),
                    Container(
                      height: AppHeights.height50,
                      width: AppWidths.width64,
                      margin: EdgeInsets.only(bottom: AppHeights.height20),
                      child: ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(AppRadius.radius15))),
                            primary: AppColors.primarylightColor,
                          ),
                          child: Text(
                            'Use',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: AppTexts.size14,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: AppTexts.size14,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      "\$610.19",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: AppTexts.size14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier*0.8,
                ),
                Row(
                  children: [
                    Text(
                      "Shipping costs",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: AppTexts.size14,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      "\$14.09",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: AppTexts.size14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier*0.8,
                ),
                Row(
                  children: [
                    Text(
                      "Voucher",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: AppTexts.size14,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      "\$10.00",
                      style: TextStyle(
                          color: AppColors.primarylightColor,
                          fontSize: AppTexts.size14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 133,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppRadius.radius20),
                    topRight: Radius.circular(AppRadius.radius20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22.0, vertical: 17),
                child: Row(
                  children: [
                    Container(
                      // height: 79,
                      height: SizeConfig.heightMultiplier*14,
                      width: 135,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius10)),
                        color: const Color(0xff7496C2).withOpacity(0.1),
                        image: DecorationImage(
                          image: AssetImage(AppImages.backgroundVisa)
                        )
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(AppPaddings.padding8),
                          child: Row(
                            children: [
                              Text(
                                'Last 4 digits : ',
                                style: TextStyle(
                                  fontSize: AppTexts.size10,
                                  color: Colors.black
                                ),
                              ),
                              Text('8659',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: AppTexts.size12
                                ),)
                            ],
                          ),
                        ),
                      )
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        // SizedBox(
                        //   height: AppHeights.height8,
                        // ),
                        Row(
                          children: [
                            Text(
                              "Grand Total",
                              style: TextStyle(
                                color: AppColors.primarylightColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              width:SizeConfig.widthMultiplier*2,
                            ),
                            Text(
                              "\$705.00",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppTexts.size20,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AppHeights.height8,
                        ),
                        CustomTextButton(
                          callback: (){

                          },
                          title: 'PLACE ORDER',
                          height: AppHeights.height48,
                          width: AppWidths.width150,
                          radius: AppRadius.radius30,
                          textcolour: Colors.white,
                          fontSize: AppTexts.size14,
                          colour: AppColors.primarylightColor,
                          fontWeight: FontWeight.w700,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
