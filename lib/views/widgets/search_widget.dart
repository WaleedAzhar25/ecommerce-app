import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant/padding.dart';
import '../../constant/radius.dart';
import '../../utils/size_config.dart';
import 'auth_input_text_field.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier*5,
      width: SizeConfig.widthMultiplier*60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          BorderRadius.circular(AppRadius.radius10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal:AppPaddings.padding15),
            child: SvgPicture.asset('assets/icons/search.svg',)
          ),
           Flexible(
              child: AuthTextInputField(
                hintText: "Search shops",
                enabledbordercolor: Colors.transparent,
                focusedbordercolor: Colors.transparent,
                contentpadding: const EdgeInsets.only(bottom: 0),
              ))
        ],
      ),
    );
  }
}