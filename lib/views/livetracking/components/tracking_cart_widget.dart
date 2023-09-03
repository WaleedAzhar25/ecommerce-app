import 'package:ecommerce_app/constant/height.dart';
import 'package:ecommerce_app/constant/radius.dart';
import 'package:ecommerce_app/constant/textsize.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/size_config.dart';
class TrackingCartWidget extends StatelessWidget {
  final String image;
  final String title;
  final String size;
  final String color;
  final double price;
  final int count;
  const TrackingCartWidget({
    Key? key, required this.image, required this.title, required this.size, required this.color, required this.price, required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*2,),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: SizeConfig.heightMultiplier*11.5,
                width: SizeConfig.widthMultiplier*22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image,),
                      fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.circular(AppRadius.radius20),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: GoogleFonts.sourceSansPro(
                      fontSize: AppTexts.size16,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: SizeConfig.heightMultiplier*0.8,),
                    Text('Size:$size}',style: GoogleFonts.sourceSansPro(
                      fontSize: AppTexts.size12,
                      color: const Color(0xffAE9A99),
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: SizeConfig.heightMultiplier*0.8,),
                    Text('Color:$color}',style: GoogleFonts.sourceSansPro(
                      fontSize: AppTexts.size12,
                      color: const Color(0xffAE9A99),
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height:AppHeights.height8),
                    Text('₹$price',style: GoogleFonts.sourceSansPro(
                      fontSize: AppTexts.size18 ,
                      fontWeight: FontWeight.w700,
                    ),),
                  ],
                ),
              ),
              const Spacer(),
              Text(count.toString(),style: const TextStyle(fontWeight: FontWeight.w600),),
            ],
          ),
          SizedBox(height: AppHeights.height20,)
        ],
      ),
    );
  }
}
