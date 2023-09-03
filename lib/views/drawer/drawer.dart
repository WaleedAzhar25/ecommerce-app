import 'package:ecommerce_app/constant/colors.dart';
import 'package:ecommerce_app/constant/icons.dart';
import 'package:ecommerce_app/constant/images.dart';
import 'package:ecommerce_app/constant/textsize.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/drawer/components/my_address.dart';
import 'package:ecommerce_app/views/drawer/components/my_profile.dart';
import 'package:ecommerce_app/views/drawer/components/payment_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant/height.dart';
import 'components/drawer_tiles.dart';
import 'components/order_history.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}
class _MyDrawerState extends State<MyDrawer> {
  bool isStatus = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier*21,
            width: SizeConfig.widthMultiplier*100,
            child: Stack(
              children: [
                SizedBox(
                    height: SizeConfig.heightMultiplier*15,
                    width: SizeConfig.widthMultiplier*100,
                    child: SvgPicture.asset(AppIcons.drawerBackground,fit: BoxFit.cover,)),
                Positioned(
                  right: SizeConfig.widthMultiplier*2.2,
                  top: SizeConfig.widthMultiplier*2.2,
                  child: IconButton(onPressed: (){
                    Get.back();
                  },
               icon: Icon(CupertinoIcons.xmark,color: AppColors.primarydarkColor,)),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: SizeConfig.imageSizeMultiplier*34,
                        width:SizeConfig.imageSizeMultiplier*34,
                        decoration:   BoxDecoration(
                          image: DecorationImage(image: AssetImage(AppImages.drawerdp),fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.white,width: 3)
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: AppHeights.height8,),
          Text('Joshuna Gillani',style: GoogleFonts.sourceSansPro(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: AppTexts.size16,
          ),),
          SizedBox(height:AppHeights.height48,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                DrawerTiles(title: 'My profile', icon: AppIcons.person,onTap: (){
                  Get.to(const MyProfile());
                },),
                DrawerTiles(title: 'Order history', icon: AppIcons.history,onTap: (){
                  Get.to(const OrderHistory());

                },),
                DrawerTiles(title: 'Delivery bus', icon: AppIcons.deliveryStatus,onTap: (){

                },),
                DrawerTiles(title: 'Payment method', icon: AppIcons.paymentMethod,onTap: (){
                  Get.to(const PaymentMethod());
                },),
                DrawerTiles(title: 'My Address', icon: AppIcons.address,onTap: (){
                  Get.to(const MyAddress());
                },),
                DrawerTiles(title: 'Settings', icon: AppIcons.settings,onTap: (){

                },),
                DrawerTiles(title: 'Log out', icon: AppIcons.logout,onTap: (){

                },),
                SizedBox(height: SizeConfig.heightMultiplier*8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Buyer',
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w600,
                          fontSize: AppTexts.size14,
                          color: AppColors.primarylightColor
                      ),),

                    SizedBox(width: SizeConfig.widthMultiplier*3,),
                    Neumorphic(
                      style: NeumorphicStyle(
                          color: Colors.white,
                          depth: 2,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))
                      ),
                      child: FlutterSwitch(
                        activeColor: Colors.white,
                        inactiveColor: Colors.white,
                        activeToggleColor: AppColors.primarydarkColor,
                        inactiveToggleColor: AppColors.primarylightColor,
                        width: SizeConfig.widthMultiplier*18,
                        height: SizeConfig.heightMultiplier*4,
                        toggleSize: SizeConfig.widthMultiplier*6,
                        value: isStatus,
                        borderRadius: 30.0,
                        onToggle: (value) {
                          setState(() {
                            isStatus = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: SizeConfig.widthMultiplier*3,),

                    Text('Seller',
                      style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w600,
                          fontSize: AppTexts.size14,
                          color: AppColors.primarylightColor
                      ),),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

