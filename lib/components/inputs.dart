import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:robo_insure/constants/color.dart';

class Input extends StatelessWidget {
  TextEditingController? controller = new TextEditingController(text: '');
  String? hintText;
  Widget? prefix;
  Widget? suffix;
  Widget? suffixIcon;
  int? h = 44;
  TextInputType? keyBoardType;

  Function(String)? onChanged;
  Function(String?)? onSaved;
  String? Function(String?)? validator;
  Input(
      {Key? key,
      this.controller,
      this.hintText,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.prefix,
      this.keyBoardType,
      this.suffix,
      this.h,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextFormField(
        autocorrect: false,

        keyboardType: keyBoardType,
        controller: controller,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.5), width: 1.0),
                borderRadius: BorderRadius.circular(10.0)),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 19.0),
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w200,
                fontSize: 16.0.r,
                height: 1.37),
            prefix: prefix,
            suffix: suffix,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.5), width: 1.0),
                borderRadius: BorderRadius.circular(10.0))),
        onChanged: (String value) => onChanged?.call(value),
        onSaved: (String? value) => onSaved?.call(value),
        validator: (value) => validator?.call(value),
        // validator: validate.?call(),
      ),
    );
  }
}

class DescInput extends StatelessWidget {
  TextEditingController? controller = new TextEditingController(text: '');
  String? hintText;
  Widget? prefix;
  Widget? suffix;
  Widget? suffixIcon;
  int? h;
  TextInputType? keyBoardType;

  Function(String)? onChanged;
  Function(String?)? onSaved;
  String? Function(String?)? validator;
  DescInput(
      {Key? key,
      this.controller,
      this.hintText,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.prefix,
      this.keyBoardType,
      this.suffix,
      this.h,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        autocorrect: false,
        maxLines: h,
        keyboardType: keyBoardType,
        controller: controller,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.5), width: 1.0),
                borderRadius: BorderRadius.circular(10.0)),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 19.0),
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w200,
                fontSize: 16.0.r,
                height: 1.37),
            prefix: prefix,
            suffix: suffix,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.5), width: 1.0),
                borderRadius: BorderRadius.circular(10.0))),
        onChanged: (String value) => onChanged?.call(value),
        onSaved: (String? value) => onSaved?.call(value),
        validator: (value) => validator?.call(value),
        // validator: validate.?call(),
      ),
    );
  }
}

class InputNoBorder extends StatelessWidget {
  TextEditingController? controller = new TextEditingController(text: '');
  String? hintText;
  Widget? prefix;
  Widget? suffix;
  Widget? suffixIcon;
  TextInputType? keyBoardType;

  Function(String)? onChanged;
  Function(String?)? onSaved;
  String? Function(String?)? validator;
  InputNoBorder(
      {Key? key,
      this.controller,
      this.hintText,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.prefix,
      this.keyBoardType,
      this.suffix,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.0,
      child: TextFormField(
        autocorrect: false,
        keyboardType: keyBoardType,
        controller: controller,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 19.0),
            hintText: hintText,
            hintStyle: const TextStyle(
                color: kDefaultWhite,
                fontWeight: FontWeight.w200,
                fontSize: 16.0,
                height: 1.37),
            prefix: prefix,
            suffix: suffix,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: neutral, width: 1.0),
                borderRadius: BorderRadius.circular(10.0))),
        onChanged: (String value) => onChanged?.call(value),
        onSaved: (String? value) => onSaved?.call(value),
        validator: (value) => validator?.call(value),
        // validator: validate.?call(),
      ),
    );
  }
}
