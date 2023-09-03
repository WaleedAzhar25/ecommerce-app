import 'dart:async';

import 'package:country_picker/country_picker.dart';
import 'package:ecommerce_app/constant/height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../constant/colors.dart';
import '../../../constant/padding.dart';
import '../../../constant/radius.dart';
import '../../../constant/textsize.dart';
import '../../../constant/width.dart';
import '../../../utils/size_config.dart';
import '../../widgets/auth_input_text_field.dart';
import '../../../../../demo/lib/widgets/custom_text_button.dart';
class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  TextEditingController nameController=TextEditingController();
  TextEditingController titleController=TextEditingController();
  TextEditingController streetController=TextEditingController();
  TextEditingController suitController=TextEditingController();
  TextEditingController stateController=TextEditingController();
  TextEditingController zipController=TextEditingController();
  TextEditingController phoneController=TextEditingController();


  List<LatLng> latLng = [const LatLng(33.738045, 73.084488) , const LatLng(33.567997728, 72.635997456)];
  final CameraPosition _kGooglePlex =  const CameraPosition(
    target: LatLng(33.738045, 73.084488),
    zoom: 17,
  );
  final Completer<GoogleMapController> _controller = Completer();

  var state;
  var countryCode='US';
  var flag='🇺🇸';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text('Add New Address',
          style: GoogleFonts.poppins(
            fontSize: AppTexts.size14,
            color: AppColors.primarydarkColor,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),),
        centerTitle: true,
        leading:  IconButton(onPressed: (){
          Get.back();
        },
            icon:  Icon(Icons.arrow_back_ios,color: Colors.black,size: SizeConfig.imageSizeMultiplier*5,)),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Address title',
                style: GoogleFonts.sourceSansPro(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: AppTexts.size14
                ),),
              SizedBox(height: SizeConfig.heightMultiplier*1,),
              AuthTextInputField(
                isoutline: true,
                radius: AppWidths.width15,
                hintText: 'Title Address',
                contentpadding: EdgeInsets.all( AppPaddings.padding15,),
                hintSize: SizeConfig.textMultiplier*1.6,
                textEditingController: titleController,
              ),
              Text('Fullname',
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
              Text('Street Address',
                style: GoogleFonts.sourceSansPro(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: AppTexts.size14,
                ),),
              SizedBox(height: SizeConfig.heightMultiplier*1,),
              AuthTextInputField(
                isoutline: true,
                radius: AppWidths.width15,
                hintText: 'Street Address',
                contentpadding: EdgeInsets.all( AppPaddings.padding15,),
                hintSize: SizeConfig.textMultiplier*1.6,
                textEditingController: streetController,
              ),
              Text('Apt, suite, etc.',
                style: GoogleFonts.sourceSansPro(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: AppTexts.size14
                ),),
              SizedBox(height: SizeConfig.heightMultiplier*1,),
              AuthTextInputField(
                isoutline: true,
                radius: AppWidths.width15,
                hintText: 'B 206',
                inputType: TextInputType.text,
                contentpadding: EdgeInsets.all( AppPaddings.padding15,),
                hintSize: AppTexts.size14,
                textEditingController: suitController,
              ),
              Row(
                children: [
                  SizedBox(
                    width: SizeConfig.widthMultiplier*52.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('State',
                          style: GoogleFonts.sourceSansPro(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: AppTexts.size14
                          ),),
                        SizedBox(height: SizeConfig.heightMultiplier*1,),
                        AuthTextInputField(
                          isoutline: true,
                          contentpadding: EdgeInsets.all(AppPaddings.padding15),
                          radius: SizeConfig.widthMultiplier*4,
                          hintText: 'Indonesia',
                          textEditingController: stateController,
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            onPressed: () {
                              showCountryPicker(
                                  context: context,
                                  onSelect: (Country country) {
                                    setState((){
                                      stateController.text=country.name;
                                    });
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: SizeConfig.widthMultiplier*2,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: SizeConfig.widthMultiplier*3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Zip Code',
                            style: GoogleFonts.sourceSansPro(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: AppTexts.size14
                            ),),
                          SizedBox(height: AppHeights.height8,),
                          AuthTextInputField(
                            isoutline: true,
                            inputType: TextInputType.number,
                            contentpadding: EdgeInsets.all(AppPaddings.padding15),
                            radius: SizeConfig.widthMultiplier*4,
                            hintText: "12345",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Text('Mobile Number',
                style: GoogleFonts.sourceSansPro(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: AppTexts.size14
                ),),
              SizedBox(height: SizeConfig.heightMultiplier*1.5,),
              Row(
                children: [
                  GestureDetector(
                    onTap:(){
                      showCountryPicker(
                          context: context,
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
                        contentpadding: EdgeInsets.all(AppPaddings.padding15),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Location',
                    style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w600,
                      fontSize: AppTexts.size14,
                    ),
                  ),
                  IconButton(onPressed: (){

                  }, icon:Icon(Icons.more_horiz,color: Colors.black38,size: SizeConfig.imageSizeMultiplier*8,)
                  )
                ],
              ),
              SizedBox(height: AppHeights.height10,),
              Container(
                height: SizeConfig.heightMultiplier*17.6,
                width: AppWidths.widthFull,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppRadius.radius15),
                ),
                child:GoogleMap(
                  zoomControlsEnabled: false,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  initialCameraPosition: _kGooglePlex,
                  mapType: MapType.normal,

                ),

              ),
              SizedBox(height: AppHeights.height27),
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
              SizedBox(height: SizeConfig.heightMultiplier*12,)
            ],
          ),
        ),
      )

    );
  }
}
