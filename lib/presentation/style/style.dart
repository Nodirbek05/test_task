import 'package:flutter/material.dart';
import 'package:testproject/presentation/style/app_colors.dart';
import 'package:testproject/presentation/style/app_constant.dart';

class Styles {
  final BuildContext context;
  Styles(this.context);

  static String get fontFamily => "Inter";

  TextStyle setStyleW400({required BuildContext context}) {
    return TextStyle(
        color: AppColors.black,
        fontSize: MediaQuery.of(context).size.width > AppConstant.tablet ? 25.0 : 11.0,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily);
  }

  static const w600s25black = TextStyle(
    color: AppColors.black,
    fontSize: 25,
    fontWeight: FontWeight.w600,
  );
  static const w600s18black = TextStyle(
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

   static const w700s16black = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const w400s15grey = TextStyle(
    color: AppColors.grey64,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const w400s15black = TextStyle(
    color: AppColors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const w400s10black = TextStyle(
    color: AppColors.black,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static const w400s14green = TextStyle(
    color: AppColors.green,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const w400s24black = TextStyle(
    color: AppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  static const w400s24main = TextStyle(
    color: AppColors.beezzBlue,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static const w400s24white = TextStyle(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  static const w400s20black = TextStyle(
    color: AppColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const w400s10white = TextStyle(
    color: AppColors.white,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static const w400s14white = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const w400s16black = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const w400s16grey = TextStyle(
    color: AppColors.grey64,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const w400s14grey = TextStyle(
    color: AppColors.grey64,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const w400s10grey = TextStyle(
    color: AppColors.grey64,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );
  static const w400s16red = TextStyle(
    color: AppColors.red,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

    static const w700s22red = TextStyle(
    color: AppColors.red,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );
  static const w400s30black = TextStyle(
    color: AppColors.black,
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );

  static const w400s30white = TextStyle(
    color: AppColors.white,
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );

  static const w400s14black = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const w400s10black22 = TextStyle(
    color: AppColors.black22,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static const w400s16main = TextStyle(
    color: AppColors.beezzBlue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const w400s18black = TextStyle(
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
   

    static const w500s16White = TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const w400s18white = TextStyle(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  TextStyle setStyleW500({required BuildContext context}) {
    return TextStyle(
        color: AppColors.black,
        fontSize: MediaQuery.of(context).size.width > AppConstant.tablet ? 21.0 : 16.0,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily);
  }

  TextStyle setStyleW600({required BuildContext context}) {
    return TextStyle(
        color: AppColors.black,
        fontSize: MediaQuery.of(context).size.width > AppConstant.tablet ? 16.0 : 11.0,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily);
  }

  TextStyle setStyleW700({required BuildContext context}) {
    return TextStyle(
      color: AppColors.white,
      fontSize: MediaQuery.of(context).size.width > AppConstant.tablet ? 63.0 : 60.0,
      fontWeight: FontWeight.w700,
      fontFamily: fontFamily,
    );
  }

  TextStyle setStyleW800({required BuildContext context}) {
    return TextStyle(
      color: AppColors.white,
      fontSize: MediaQuery.of(context).size.width > AppConstant.tablet ? 45.0 : 40.0,
      fontWeight: FontWeight.w800,
      fontFamily: fontFamily,
    );
  }
}
