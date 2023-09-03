import 'package:ecommerce_app/constant/colors.dart';
import 'package:ecommerce_app/constant/height.dart';
import 'package:ecommerce_app/constant/images.dart';
import 'package:ecommerce_app/constant/padding.dart';
import 'package:ecommerce_app/constant/radius.dart';
import 'package:ecommerce_app/constant/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/textsize.dart';
import '../widgets/auth_input_text_field.dart';
enum SingingCharacter { A, B,C}

class PaymentCheckOut extends StatefulWidget {
  const PaymentCheckOut({Key? key}) : super(key: key);

  @override
  State<PaymentCheckOut> createState() => _PaymentCheckOutState();
}

class _PaymentCheckOutState extends State<PaymentCheckOut> {
  SingingCharacter? _character = SingingCharacter.A;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,size:SizeConfig.imageSizeMultiplier*4.5,)),
        title: Row(
          children: [
            const Spacer(),
            Text(
              "Payment",
              style: TextStyle(
                color: AppColors.primarydarkColor,
                fontSize: AppTexts.size15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Text(
              "Store Policy",
              style: TextStyle(
                color: AppColors.primarylightColor,
                fontSize: AppTexts.size14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: AppWidths.widthFull,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius15),),
                    border: Border.all(
                        color: AppColors.primarydarkColor
                    ),
                  ),
                  child: ExpansionTile(
                    title: Text('Credit Card ',
                      style: TextStyle(
                        color: const Color(0xff2B0806).withOpacity(0.8),
                        fontSize: AppTexts.size14 ,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    collapsedTextColor: Colors.black,
                    iconColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    children: [
                      Column(
                        children:  [
                          ListTile(
                            leading:Image.asset(AppImages.cardLogo,height: AppHeights.height27,width: SizeConfig.widthMultiplier*9,) ,
                            title: Text(
                              " ****  ****  ****  4567",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppTexts.size12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing:  Radio(
                              value: SingingCharacter.A,
                              activeColor: AppColors.primarylightColor,
                              overlayColor: MaterialStateProperty.all(Colors.white),
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),

                          ),
                          ListTile(
                            leading:Image.asset(AppImages.visa,height: AppHeights.height27,width: SizeConfig.widthMultiplier*9,) ,
                            title: Text(
                              " ****  ****  ****  4567",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppTexts.size12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing:  Radio(
                              value: SingingCharacter.B,
                              activeColor: AppColors.primarylightColor,
                              overlayColor: MaterialStateProperty.all(Colors.white),
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),

                          ),
                          ListTile(
                            leading:Image.asset(AppImages.american,height: AppHeights.height27,width: SizeConfig.widthMultiplier*9,) ,
                            title: Text(
                              " ****  ****  ****  4567",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppTexts.size12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            trailing:  Radio(
                              value: SingingCharacter.C,
                              activeColor: AppColors.primarylightColor,
                              overlayColor: MaterialStateProperty.all(Colors.white),
                              groupValue: _character,
                              onChanged: (SingingCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),

                          ),
                          SizedBox(
                            height: AppTexts.size25,
                          ),
                          SizedBox(
                            height: AppHeights.height50,
                            width: AppWidths.width267,
                            child: ElevatedButton(onPressed: (
                                ){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const CARDACTIVATION()));
                            },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        style: BorderStyle.none,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius10))
                                  ),
                                  primary: AppColors.primarylightColor,
                                ), child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                const Icon(Icons.add,color: Colors.white,),
                                SizedBox(
                                  width: SizeConfig.widthMultiplier*1,
                                ),
                                Text('Add new card',
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: AppTexts.size12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                            ),
                          ),
                          SizedBox(
                            height: AppHeights.height27,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppHeights.height20,
                ),
                SizedBox(
                  width: AppWidths.widthFull,
                child:AuthTextInputField(
                  radius: AppWidths.width15,
                  bordercolor: Colors.black,
                  hintText: 'COD/Pay at Premises',
                  isoutline: true,
                  hintSize: SizeConfig.textMultiplier*1.6,
                ),

                ),

                SizedBox(
                  width: AppWidths.widthFull,
                  child:AuthTextInputField(
                    radius: AppWidths.width15,
                    bordercolor: Colors.black,
                    hintText: 'Paypal',
                    isoutline: true,
                    hintSize: SizeConfig.textMultiplier*1.6,
                  ),

                ),
                 SizedBox(
                  height: AppHeights.height18,
                ),

              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 150,
                width: AppWidths.widthFull,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft:Radius.circular(20),),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppHeights.height20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Price',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: AppTexts.size14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text('\$550.69',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: AppTexts.size25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppHeights.height20,
                      ),
                      SizedBox(
                        height: AppHeights.height62,
                        width: AppWidths.widthFull,
                        child: ElevatedButton(onPressed: (
                            ){
                        },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    style: BorderStyle.none,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius30))
                              ),
                              primary: AppColors.primarylightColor,
                            ),
                            child:
                            Text('PAY NOW',
                              style: TextStyle(
                                color:Colors.white,
                                fontSize: AppTexts.size16,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}