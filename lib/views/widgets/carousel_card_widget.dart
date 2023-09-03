import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CarouselCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final Color titleColor;
  const CarouselCard({Key? key, required this.image, required this.title, required this.price, required this.titleColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(SizeConfig.widthMultiplier*2),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: SizeConfig.heightMultiplier*8,),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff52BD94),
                borderRadius: BorderRadius.circular(SizeConfig.widthMultiplier*1.5)
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*2.3,vertical: SizeConfig.heightMultiplier*0.3),
                child: Text(
                  'NEW',
                  style: GoogleFonts.urbanist(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textMultiplier*1.5
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier*0.6,),
            Text(title,style: GoogleFonts.urbanist(
              color: titleColor,
              fontSize: SizeConfig.textMultiplier*2.7,
              fontWeight: FontWeight.w700
            ),),
            Text('₹ $price',style: GoogleFonts.urbanist(
              color: titleColor,
              fontSize: SizeConfig.textMultiplier*2,
              fontWeight: FontWeight.w700
            ),),
          ],
        ),
      ),
    );
  }
}
