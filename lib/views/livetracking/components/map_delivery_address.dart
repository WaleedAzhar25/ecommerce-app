import 'package:ecommerce_app/constant/height.dart';
import 'package:ecommerce_app/constant/padding.dart';
import 'package:ecommerce_app/constant/textsize.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/colors.dart';
import '../../../utils/size_config.dart';
class MapDeliveryAddress extends StatelessWidget {
  const MapDeliveryAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*3),
      child: Column(
        children: [
          Container(
            height: AppHeights.height38,
            width: SizeConfig.widthMultiplier*double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(SizeConfig.widthMultiplier*6.6),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:AppPaddings.padding13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Call delivery Rider',style: GoogleFonts.sourceSansPro(
                      fontSize: AppTexts.size14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),),
                  IconButton(onPressed: (){

                  },
                      icon: Icon(Icons.phone_in_talk,color: AppColors.primarylightColor,))
                ],
              ),
            ),
          ),
          SizedBox(height: AppHeights.height10),
          Container(
            height: 154,
            width: SizeConfig.widthMultiplier*double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(SizeConfig.widthMultiplier*2)
            ),
            child: Padding(
              padding:  EdgeInsets.all(AppPaddings.padding15),
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.widthMultiplier*60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivery Address',style: GoogleFonts.sourceSansPro(
                            fontSize: AppTexts.size14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: SizeConfig.heightMultiplier*0.5,),
                        Text('27 Independence Street, Sukamulya, Cikembar, Sukabumi, Jawa Barat 43157',style: GoogleFonts.sourceSansPro(
                            fontSize: AppTexts.size12,
                            color: const Color(0xffAE9A99),
                            fontWeight: FontWeight.w400
                        ),),
                        SizedBox(height: AppHeights.height8,),
                        Text('Expected Delivery Time: 8:50 PM',style: GoogleFonts.sourceSansPro(
                            fontSize: AppTexts.size12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400
                        ),),
                        SizedBox(height: AppHeights.height8,),
                        Text('₹3500',style: GoogleFonts.sourceSansPro(
                            fontSize: AppTexts.size20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.black12,
                    indent: SizeConfig.heightMultiplier*2,
                    endIndent: SizeConfig.heightMultiplier*2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.widthMultiplier*4),
                    child: TextButton(onPressed: (){

                    },
                        child: Text('View\nDetails',style: GoogleFonts.sourceSansPro(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primarylightColor,
                          fontSize: AppTexts.size12
                        ),)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
