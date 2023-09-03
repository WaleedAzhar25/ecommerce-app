import 'package:ecommerce_app/constant/radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant/height.dart';
import '../../../constant/width.dart';
import '../../../utils/size_config.dart';
class PaymentIconsWidget extends StatelessWidget {
  final String image;
  const PaymentIconsWidget({
    Key? key, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppHeights.height62,
      width: AppWidths.width64,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppRadius.radius20),
      ),
      child: Center(
        child: SvgPicture.asset(image),
      ),
    );
  }
}
