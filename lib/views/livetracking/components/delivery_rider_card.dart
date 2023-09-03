import 'package:ecommerce_app/constant/height.dart';
import 'package:ecommerce_app/constant/padding.dart';
import 'package:ecommerce_app/constant/radius.dart';
import 'package:ecommerce_app/constant/textsize.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constant/colors.dart';
import '../../../utils/size_config.dart';
class DliveryRiderCard extends StatelessWidget {
  const DliveryRiderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:AppHeights.height227,
      width: SizeConfig.widthMultiplier*100,
      child:Card(
        elevation: 3,
        color: Colors.white,
        shadowColor: Colors.blueGrey.withOpacity(0.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.radius20)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding22,vertical:AppPaddings.padding13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Delivery Rider’s Details',style: GoogleFonts.sourceSansPro(
                color: AppColors.primarydarkColor,
                fontWeight: FontWeight.w900,
                fontSize: AppTexts.size14,
              ),),
              SizedBox(height: AppHeights.height8,),
              Text('Joshua Gillani \n+91 888 888 8888',style: GoogleFonts.sourceSansPro(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: AppTexts.size13,
              ),),
              SizedBox(height:AppHeights.height38,),
              Text('Delivery Address',style: GoogleFonts.sourceSansPro(
                color: AppColors.primarydarkColor,
                fontWeight: FontWeight.w900,
                fontSize: AppTexts.size14,
              ),),
              SizedBox(height: AppHeights.height8,),
              Text('27 Independence Street, Sukamulya, Cikembar, Sukabumi, Jawa Barat 43157',style: GoogleFonts.sourceSansPro(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: AppTexts.size12,
              ),),
              SizedBox(height: AppHeights.height8,),
              Text('Joshua Gillani, +91 888 888 8888',style: GoogleFonts.sourceSansPro(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: AppTexts.size12,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
