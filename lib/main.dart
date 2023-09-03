import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/cart_checkout/all_carts.dart';
import 'package:ecommerce_app/views/cart_checkout/available_items_cart.dart';
import 'package:ecommerce_app/views/cart_checkout/checkout.dart';
import 'package:ecommerce_app/views/cart_checkout/confirmation_page.dart';
import 'package:ecommerce_app/views/cart_checkout/payment_checkout.dart';
import 'package:ecommerce_app/views/drawer/components/my_address.dart';
import 'package:ecommerce_app/views/drawer/components/order_history.dart';
import 'package:ecommerce_app/views/drawer/components/payment_method.dart';
import 'package:ecommerce_app/views/drawer/drawer.dart';
import 'package:ecommerce_app/views/livetracking/live_tracking.dart';
import 'package:ecommerce_app/views/livetracking/live_tracking_map.dart';
import 'package:ecommerce_app/views/mapLocation/map_location.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
void main() => runApp(
    const  MyApp()
);
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: const Color(0xffFEFEFE),
              ),
              debugShowCheckedModeBanner: false,
              home: const AllCartsCheckOut(),
            );
          },
        );
      },
    );
  }
}
