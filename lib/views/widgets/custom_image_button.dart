import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageButton extends StatelessWidget {
  String image;
  final double? height;
  final double? width;
  final Color? colour;
  final double? fontSize;
  final double? radius;
  VoidCallback callback;

  CustomImageButton(
      {Key? key,
      required this.image,
      required this.callback,
      this.colour,
      this.height,
      this.width,
      this.fontSize,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: width,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius!)),
      color: colour,
      onPressed: () {
        callback();
      },
      child: SvgPicture.asset(image),
    );
  }
}
