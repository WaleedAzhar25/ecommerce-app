import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AuthTextInputField extends StatefulWidget {
  final Color textColor, enabledbordercolor, focusedbordercolor;
  final String? labelText;
  final String hintText;
  final double? hintSize;
  final Color hintcolor;
  final Color bordercolor;
  final double radius;
  final bool isPassword;
  final Color fillColor;
  final Color cursorColor;
  final TextEditingController? textEditingController;
  final TextInputType inputType;
  final suffixIcon;
  final prefixIcon;
  final enabled;
  final Function(String)? onChnage;
  final TextInputAction inputAction;
  final String? Function(String? val)? validator;
  final List<TextInputFormatter>? inputformatter;
  final int? maxlength;
  final int? maxLine;

  final EdgeInsetsGeometry? contentpadding;
   bool isoutline;
   AuthTextInputField({
    Key? key,
    required this.hintText,
    this.textEditingController,
    this.isPassword = false,
    this.hintSize,
    this.hintcolor = Colors.grey,
    this.fillColor = Colors.transparent,
    this.textColor = Colors.black,
    this.cursorColor = Colors.black,
    this.inputType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled,
    this.labelText,
    this.radius = 10,
    this.bordercolor = Colors.black,
    this.onChnage,
    this.inputformatter,
    this.maxlength,
    this.contentpadding,
    this.validator,
    this.enabledbordercolor = Colors.black12,
    this.focusedbordercolor = Colors.black, this.isoutline=false, this.inputAction=TextInputAction.next,this.maxLine,
  }) : super(key: key);

  @override
  State<AuthTextInputField> createState() => _TextInputFieldViewState();
}


class _TextInputFieldViewState extends State<AuthTextInputField> {
  bool isObscure = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isObscure = widget.isPassword == true;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      maxLength: widget.maxlength,
      inputFormatters: widget.inputformatter,
      enabled: widget.enabled,
      obscureText: isObscure,
      onChanged: widget.onChnage,
      maxLines: widget.maxLine,
      style: TextStyle(color: widget.textColor),
      controller: widget.textEditingController,
      keyboardType: widget.inputType,
      textInputAction: widget.inputAction,
      decoration: InputDecoration(
        contentPadding: widget.contentpadding,
        helperText: "",
        prefixIcon: widget.prefixIcon,
        filled: true,
        fillColor: widget.fillColor,
        enabledBorder: widget.isoutline?OutlineInputBorder(
          borderSide: BorderSide(color: widget.enabledbordercolor),
          borderRadius: BorderRadius.circular(widget.radius),
        ):UnderlineInputBorder(
            borderSide: BorderSide(color: widget.enabledbordercolor)),
        focusedBorder: widget.isoutline?OutlineInputBorder(
          borderSide: BorderSide(color: widget.enabledbordercolor),
          borderRadius: BorderRadius.circular(widget.radius),
        ):UnderlineInputBorder(
            borderSide: BorderSide(color: widget.enabledbordercolor)),
        hintText: widget.hintText,
        hintStyle:
            TextStyle(fontSize: widget.hintSize, color: widget.hintcolor),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: isObscure
                    ? const Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.visibility_outlined,
                        color: Colors.black,
                      ))
            : widget.suffixIcon,
      ),
      cursorColor: widget.cursorColor,
    );
  }
}
