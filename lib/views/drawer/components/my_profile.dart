import 'package:country_picker/country_picker.dart';
import 'package:ecommerce_app/constant/icons.dart';
import 'package:ecommerce_app/constant/images.dart';
import 'package:ecommerce_app/constant/padding.dart';
import 'package:ecommerce_app/constant/textsize.dart';
import 'package:ecommerce_app/constant/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/auth_input_text_field.dart';
import '../../../../../demo/lib/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../constant/colors.dart';
import '../../../constant/radius.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}
class _MyProfileState extends State<MyProfile> {
  TextEditingController nameController=TextEditingController();
  TextEditingController birthController=TextEditingController();
  TextEditingController genderController=TextEditingController();
  TextEditingController mailController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  DateTime? _selectedDate;
    var countryCode='US';
    var flag='🇺🇸';
  void _pickDateDialog() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
        birthController.text=DateFormat.yMMMd().format(_selectedDate!);
      });
    });
  }
var choose='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier*27,
              width: SizeConfig.widthMultiplier*double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier*20.6,
                    width: SizeConfig.widthMultiplier*double.infinity,
                    child: SvgPicture.asset(AppIcons.drawerBackground,fit: BoxFit.fill,),
                  ),
                  Positioned(
                    bottom:20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: SizeConfig.imageSizeMultiplier*27.2,
                          width:SizeConfig.imageSizeMultiplier*27.2,
                          decoration:   BoxDecoration(
                              image: DecorationImage(image: AssetImage(AppImages.drawerdp),fit: BoxFit.cover),
                              shape: BoxShape.circle,
                              color: Colors.black,
                              border: Border.all(color: Colors.white,width: 3)
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom:0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: SizeConfig.imageSizeMultiplier*10,
                          width:SizeConfig.imageSizeMultiplier*20,
                          child: SvgPicture.asset(AppIcons.camera),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: SizeConfig.widthMultiplier*2.2,
                    top: SizeConfig.widthMultiplier*13,
                    right: SizeConfig.widthMultiplier*2.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){
                          Get.back();
                        },
                            icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
                        Text('My Profile',style: GoogleFonts.poppins(
                          fontSize: AppTexts.size14,
                          color: AppColors.primarydarkColor,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),),
                        SizedBox(width: SizeConfig.widthMultiplier*10,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: SizeConfig.heightMultiplier*1.8,),
                  Text('Full name',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                    fontWeight: FontWeight.w600,
                      fontSize: AppTexts.size14
                    ),),
                SizedBox(height: SizeConfig.heightMultiplier*1,),
                 AuthTextInputField(
                    radius: AppWidths.width15,
                    hintText: 'Full Name',
                   isoutline: true,
                   contentpadding: EdgeInsets.all( AppPaddings.padding15,),
                   hintSize: SizeConfig.textMultiplier*1.6,
                   textEditingController: nameController,
                 ),
                  Text('Date of birth',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14
                    ),),
                  SizedBox(height: SizeConfig.heightMultiplier*1,),
                  AuthTextInputField(
                    isoutline: true,
                    radius: AppWidths.width15,
                    hintText: 'Date of birth',
                    suffixIcon: IconButton(icon:const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,), onPressed: () {
                      _pickDateDialog();
                    },),
                    contentpadding: EdgeInsets.all( AppPaddings.padding15,),
                    hintSize: SizeConfig.textMultiplier*1.6,
                    textEditingController: birthController,
                  ),
                  Text('Gender',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14,
                    ),),
                  SizedBox(height: SizeConfig.heightMultiplier*1,),
                  AuthTextInputField(
                    isoutline: true,
                    radius: AppWidths.width15,
                    hintText: 'Select Gender',
                    contentpadding: EdgeInsets.all( AppPaddings.padding15,),
                    hintSize: SizeConfig.textMultiplier*1.6,
                    textEditingController: genderController,
                    suffixIcon: IconButton(icon:const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,), onPressed: () {
                      Get.dialog(
                        Center(
                          child: Container(
                            height: 200,
                            width: 200,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(onPressed: (){
                                  setState((){
                                    choose='Male';
                                    genderController.text=choose;
                                  });
                                  Get.back();
                                },
                                    child:  Text('Male',style: GoogleFonts.urbanist(color:AppColors.primarydarkColor,fontSize: SizeConfig.textMultiplier*2,fontWeight: FontWeight.w600),)),
                                const Divider(),
                                TextButton(onPressed: (){
                                  setState((){
                                    choose='Female';
                                    genderController.text=choose;
                                  });
                                  Get.back();
                                },
                                    child:  Text('Female',style: GoogleFonts.urbanist(color:AppColors.primarydarkColor,fontSize: SizeConfig.textMultiplier*2,fontWeight: FontWeight.w600),)),
                               const Divider(),
                                TextButton(onPressed: (){
                                  setState((){
                                    choose='Other';
                                    genderController.text=choose;
                                  });
                                  Get.back();
                                },
                                    child: Text('Other',style: GoogleFonts.urbanist(color:AppColors.primarydarkColor,fontSize: SizeConfig.textMultiplier*2,fontWeight: FontWeight.w600),))
                              ],
                            ),
                          ),
                        ),
                      );

                    },),
                  ),
                  Text('Email',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14
                    ),),
                  SizedBox(height: SizeConfig.heightMultiplier*1,),
                  AuthTextInputField(
                    isoutline: true,
                    radius: AppWidths.width15,
                    hintText: 'john12@gmail.com',
                    inputType: TextInputType.emailAddress,
                    contentpadding: EdgeInsets.all( AppPaddings.padding15,),
                    hintSize: SizeConfig.textMultiplier*1.6,
                    textEditingController: mailController,
                  ),
                  Text('Mobile Number',
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: AppTexts.size14
                    ),),
                  SizedBox(height: SizeConfig.heightMultiplier*2,),
                  Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                              flagSize: 25,
                              backgroundColor: Colors.white,
                              textStyle:const TextStyle(fontSize: 16, color: Colors.blueGrey),
                              bottomSheetHeight: 500, // Optional. Country list modal height
                              //Optional. Sets the border radius for the bottomsheet.
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              //Optional. Styles the search field.
                              inputDecoration: InputDecoration(
                                labelText: 'Search',
                                hintText: 'Start typing to search',
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF8C98A8).withOpacity(0.2),
                                  ),
                                ),
                              ),
                            ),
                            onSelect: (Country country) {
                              setState((){
                                countryCode=country.countryCode;
                                flag=country.flagEmoji;
                              });
                            });
                          },
                        child: Container(
                          margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier*2.5),
                          height: SizeConfig.heightMultiplier*6,
                          width: SizeConfig.widthMultiplier*25,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(SizeConfig.widthMultiplier*4),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('$flag ',style: TextStyle(fontSize: SizeConfig.textMultiplier*3),),
                                Text(countryCode,style: TextStyle(fontSize: SizeConfig.textMultiplier*2,color: Colors.blueGrey),),
                                const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.blueGrey,),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: SizeConfig.widthMultiplier*2,),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: SizeConfig.widthMultiplier*3),
                          child: AuthTextInputField(
                            isoutline: true,
                            contentpadding: EdgeInsets.all(SizeConfig.widthMultiplier*3),
                              radius: SizeConfig.widthMultiplier*4,
                              inputAction: TextInputAction.done,
                              hintText: "(+62) 8888 7777",
                          inputformatter: [
                            MaskedInputFormatter('(+##) #### ######'),
                          ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier*3),
                  CustomTextButton(
                    title: 'Save',
                      colour: AppColors.primarylightColor,
                      height: SizeConfig.heightMultiplier*7,
                      width: SizeConfig.widthMultiplier*90,
                      textcolour: Colors.white,
                      fontSize: AppTexts.size14,
                      radius: AppRadius.radius15,
                      callback: (){
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
