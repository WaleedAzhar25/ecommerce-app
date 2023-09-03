import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant/colors.dart';
import '../../constant/height.dart';
import '../../constant/icons.dart';
import '../../constant/padding.dart';
import '../../constant/radius.dart';
import '../../constant/textsize.dart';
import '../../constant/width.dart';
import '../../models/checkout_model/all_cart_checkout_model.dart';
import '../../utils/size_config.dart';
import '../widgets/TextView.dart';
import '../../../../demo/lib/widgets/custom_text_button.dart';

class AvailableCartCheckout extends StatefulWidget {
  const AvailableCartCheckout({Key? key}) : super(key: key);

  @override
  State<AvailableCartCheckout> createState() => _AvailableCartCheckoutState();
}

class _AvailableCartCheckoutState extends State<AvailableCartCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,size: SizeConfig.imageSizeMultiplier*5,color: Colors.black,),),//size5
        title: Row(
          children: [
            const Spacer(),
            Text(
              'Cart',
              style: TextStyle(
                color: AppColors.primarydarkColor,
                fontWeight: FontWeight.w600,
                fontSize:  AppTexts.size15,
              ),
            ),
            const Spacer(),
            Text(
              'Store Policy',
              style: TextStyle(
                color: AppColors.primarydarkColor,
                fontWeight: FontWeight.w400,
                fontSize:  AppTexts.size14,
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: SizeConfig.heightMultiplier*100,
        child: Stack(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: AppPaddings.padding24,top: AppPaddings.padding13),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: listAllCart.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder:(BuildContext context,int index){
                          return Padding(
                            padding:  EdgeInsets.only(bottom: AppPaddings.padding24),
                            child: Slidable(
                              key: const ValueKey(0),
                              endActionPane:  ActionPane(
                                extentRatio: 0.2,
                                motion: const ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(AppRadius.radius20),
                                        bottomLeft: Radius.circular(AppRadius.radius20)),
                                    onPressed: null,
                                    backgroundColor: const Color(0xffFF4C5E),
                                    foregroundColor: Colors.white,
                                    icon: CupertinoIcons.trash,
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Container(
                                      height: AppHeights.height88,
                                      width: AppWidths.width88,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(AppRadius.radius20)),
                                          color: AppColors.primarydarkColor.withOpacity(0.1),
                                          image: DecorationImage(
                                            image: AssetImage(listAllCart[index].image,),

                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 23.7,
                                            width: 23.7,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff4CD964),
                                            ),
                                            child: Icon(Icons.check,color: Colors.white,size: SizeConfig.imageSizeMultiplier*4),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jordan 1 Retro High Tie Dye',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: AppTexts.size14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: SizeConfig.heightMultiplier*0.5,
                                        ),
                                        Text(
                                          '${listAllCart[index].company} . ${listAllCart[index].color} . ${listAllCart[index].size}',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: AppTexts.size12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: AppHeights.height10,
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(right: AppPaddings.padding13),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                '\$${listAllCart[index].price}',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: AppTexts.size14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const Spacer(),
                                              InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      if (listAllCart[index].value == 0) {
                                                        listAllCart[index].value = listAllCart[index].value;
                                                      } else {
                                                        listAllCart[index].value = listAllCart[index].value - 1;
                                                      }
                                                    });
                                                  },
                                                  child: SvgPicture.asset(AppIcons.minuscircle)),
                                              Padding(
                                                padding:  EdgeInsets.symmetric(horizontal: AppPaddings.padding8),
                                                child: TextView(text: listAllCart[index].value.toString(),
                                                  size: AppTexts.size14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      listAllCart[index].value = listAllCart[index].value + 1;
                                                    });
                                                  },
                                                  child: SvgPicture.asset(AppIcons.addcircle))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                    SizedBox(height: AppHeights.height23,),
                    Text(
                      "All Item(s) are available",
                      style: TextStyle(
                        color:const Color(0xff4CD964),
                        fontSize: AppTexts.size15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: AppHeights.height50,
                    ),
                    Container(
                      width: AppWidths.widthFull,
                      decoration: BoxDecoration(
                        color: AppColors.primarydarkColor.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(AppRadius.radius8),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Kindly make the payment once you collect the product from the seller as the order will be collected from the provided address!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primarydarkColor,
                            fontSize: AppTexts.size14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                            height: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: AppHeights.height139,)
                  ],
                ),
              )
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child:Container(
                  height: AppHeights.height120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(AppRadius.radius24),topRight:Radius.circular(AppRadius.radius24),),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
                    child: Column(
                      children: [
                        SizedBox(
                          height: AppHeights.height21,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Grand Total",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: AppTexts.size12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier*0.5,
                                ),
                                Text(
                                  "\$705.00",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: AppTexts.size20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            CustomTextButton(
                              callback: (){
                              },
                              title: 'CHECK OUT',
                              height: AppHeights.height50,
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
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}






