import 'package:ecommerce_app/constant/textsize.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

import '../../../constant/colors.dart';
import '../../../utils/size_config.dart';
class LiveTrackingDetailsWidget extends StatelessWidget {
  const LiveTrackingDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier*50,
      width: SizeConfig.widthMultiplier*100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('03:30 pm',style: TextStyle(color: const Color(0xffAE9A99),fontSize: AppTexts.size12),),
                  SizedBox(height: SizeConfig.textMultiplier*1,),
                  Text('Yesterday',style: TextStyle(color: const Color(0xffAE9A99),fontSize:AppTexts.size10),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('04:00 pm',style: TextStyle(color: const Color(0xffAE9A99),fontSize: AppTexts.size12),),
                  SizedBox(height: SizeConfig.textMultiplier*1,),
                  Text('Yesterday',style: TextStyle(color: const Color(0xffAE9A99),fontSize: AppTexts.size10),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('08:00 am',style: TextStyle(color: const Color(0xffAE9A99),fontSize: AppTexts.size12),),
                  SizedBox(height: SizeConfig.textMultiplier*1,),
                  Text('Today',style: TextStyle(color: const Color(0xffAE9A99),fontSize: AppTexts.size10),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('01:00 pm',style: TextStyle(color: const Color(0xffAE9A99),fontSize: AppTexts.size12),),
                  SizedBox(height: SizeConfig.textMultiplier*1,),
                  Text('Today',style: TextStyle(color: const Color(0xffAE9A99),fontSize: AppTexts.size10),),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier*2.3),
            child: IconStepper(
              activeStepBorderWidth: 0,
              activeStepBorderColor: Colors.white,
              direction: Axis.vertical,
              lineColor: AppColors.primarydarkColor,
              lineLength: SizeConfig.heightMultiplier*8.7,
              stepColor: AppColors.primarydarkColor.withOpacity(0.9),
              stepRadius: SizeConfig.imageSizeMultiplier*2,
              enableNextPreviousButtons: false,
              activeStepColor: AppColors.primarydarkColor.withOpacity(0.9),
              icons: const[
                Icon(Icons.circle,color: Colors.white,),
                Icon(Icons.circle,color: Colors.white,),
                Icon(Icons.circle,color: Colors.white,),
                Icon(Icons.circle,color: Colors.white,),

              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your item is being processed',style: TextStyle(color: Colors.black,fontSize: AppTexts.size12,fontWeight: FontWeight.w700),),
                  SizedBox(height: SizeConfig.textMultiplier*1,),
                  Text('Wonokromo, Surabaya',style: TextStyle(color: const Color(0xffAE9A99),fontSize: SizeConfig.textMultiplier*1.1),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your item has been shipped',style: TextStyle(color: Colors.black,fontSize: AppTexts.size12,fontWeight: FontWeight.w700),),
                  SizedBox(height: SizeConfig.textMultiplier*1,),
                  Text('Surabaya - Bandung',style: TextStyle(color: const Color(0xffAE9A99),fontSize: SizeConfig.textMultiplier*1.1),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The goods have arrived in Bandung',style: TextStyle(color: Colors.black,fontSize: AppTexts.size12,fontWeight: FontWeight.w700),),
                  SizedBox(height: SizeConfig.textMultiplier*1,),
                  Text('Bandung, Husein Sastranegara International Airport',overflow: TextOverflow.ellipsis,style: TextStyle(color: const Color(0xffAE9A99),fontSize: SizeConfig.textMultiplier*1.1),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Arrived at the destination',style: TextStyle(color: Colors.black,fontSize:AppTexts.size12,fontWeight: FontWeight.w700),),
                  SizedBox(height: SizeConfig.textMultiplier*1,),
                  Text('Cikembar, Sukabumi',style: TextStyle(color: const Color(0xffAE9A99),fontSize: SizeConfig.textMultiplier*1.1),),
                ],
              ),


            ],
          ),

        ],
      ),
    );
  }
}
