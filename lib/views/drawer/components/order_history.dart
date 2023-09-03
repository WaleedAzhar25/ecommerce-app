import 'package:ecommerce_app/constant/height.dart';
import 'package:ecommerce_app/constant/padding.dart';
import 'package:ecommerce_app/constant/radius.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constant/colors.dart';
import '../../../constant/textsize.dart';
import '../../../utils/size_config.dart';
import 'order_history_listview_widget.dart';
class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory>with TickerProviderStateMixin {
   late TabController _tabController;
   @override
  void initState() {
     _tabController = TabController(length: 3, vsync: this);
     super.initState();
   }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        title:Text('Order History',
          style:GoogleFonts.poppins(
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier*5.8,vertical: SizeConfig.heightMultiplier*1.8),
        child: Column(
          children: [
            TabBar(
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.white,
              indicatorPadding: EdgeInsets.all(SizeConfig.widthMultiplier*1),
              indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.primarylightColor,
                borderRadius: BorderRadius.circular(AppRadius.radius15)
              ),
              tabs: const [
                Tab(
                  text: 'Ongoing',
                ),
                Tab(
                  text: 'Complete',
                ),
                Tab(
                  text: 'Cancel',
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColors.primarydarkColor,
              indicatorWeight: 3,
              padding: const EdgeInsets.only(bottom: 7),
            ),
            SizedBox(height: AppHeights.height8,),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children:const [
                  OrderHistoryListView(),
                  OrderHistoryListView(),
                  OrderHistoryListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

