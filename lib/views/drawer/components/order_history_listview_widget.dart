import 'package:ecommerce_app/constant/height.dart';
import 'package:ecommerce_app/constant/textsize.dart';
import 'package:ecommerce_app/constant/width.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../models/drawer_models/order_history_model.dart';
import '../../../utils/size_config.dart';

class OrderHistoryListView extends StatelessWidget {
  const OrderHistoryListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: listOrderHistory.length,
        itemBuilder: (BuildContext context,i){
          return Padding(
            padding:  EdgeInsets.only(top: SizeConfig.heightMultiplier*3),
            child: Row(
              children: [
                Container(
                  // height:75,
                  width:70,
                  height: SizeConfig.heightMultiplier*8.6,
                  // width: SizeConfig.widthMultiplier*23,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(listOrderHistory[i].image,),
                        fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.circular(AppWidths.width15),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*3.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(listOrderHistory[i].title,style: GoogleFonts.sourceSansPro(
                        fontSize: AppTexts.size16,
                        fontWeight: FontWeight.w600,
                      ),),
                      Row(
                        children: [
                          Text('• ',style: GoogleFonts.sourceSansPro(
                            fontSize: SizeConfig.textMultiplier*2,
                            color: const Color(0xffF3AE31),
                            fontWeight: FontWeight.w900,
                          ),),
                          Text(listOrderHistory[i].process,style: GoogleFonts.sourceSansPro(
                            fontSize: AppTexts.size12,
                            color: const Color(0xffF3AE31),
                            fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      SizedBox(height: SizeConfig.heightMultiplier*1,),
                      Text('${listOrderHistory[i].day} ${listOrderHistory[i].time}',style: GoogleFonts.sourceSansPro(
                        fontSize: SizeConfig.textMultiplier*1.5,
                        color: const Color(0xffAE9A99),
                        fontWeight: FontWeight.w400,
                      ),),
                    ],
                  ),
                ),
                const Spacer(),
                Text('₹${listOrderHistory[i].price}',style: GoogleFonts.sourceSansPro(
                  fontSize: AppTexts.size16,
                  fontWeight: FontWeight.w700,
                ),),
              ],
            ),
          );
        });
  }
}
