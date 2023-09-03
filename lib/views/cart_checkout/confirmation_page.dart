import 'package:ecommerce_app/constant/colors.dart';
import 'package:ecommerce_app/constant/height.dart';
import 'package:ecommerce_app/constant/radius.dart';
import 'package:ecommerce_app/constant/textsize.dart';
import 'package:ecommerce_app/constant/width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/images.dart';
import '../../utils/size_config.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
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
                'Confirmation',
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              SizedBox(
                height: AppHeights.height10,
              ),
              Text(
                'Hi there, we have received your order! We’re just checking with the seller and will let you know as soon as the seller confirms! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: AppTexts.size15,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: AppHeights.height45,
              ),
              Image.asset(
                AppImages.timer,
                height: SizeConfig.heightMultiplier*34,
                width: SizeConfig.widthMultiplier*67,
              ),
               SizedBox(
                height: AppHeights.height48,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Confirmation Time",
                  style: TextStyle(
                    fontSize: AppTexts.size15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: AppColors.primarylightColor,
                  ),
                ),
              ),
              SizedBox(
                height: AppHeights.height8,
              ),
              Text(
                "02:39",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: AppTexts.size20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: AppHeights.height48,
              ),
              SizedBox(
                height: AppHeights.height50,
                width: AppWidths.width150,
                child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius30))),
                      primary: const Color(0xffFFEDEF),
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: const Color(0xffFF4C5E),
                        fontSize: AppTexts.size14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}