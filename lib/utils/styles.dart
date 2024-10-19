import 'package:flutter/material.dart';
import 'package:jewelry/constants.dart';
import 'package:jewelry/utils/app_colors.dart';

abstract class Styles {
  static TextStyle poppinsRegular20 = const TextStyle(
    fontSize: 20,
    fontFamily: kPoppins,
    color: Colors.black,
  );
  static TextStyle poppinsRegular16 = const TextStyle(
    fontSize: 16,
    fontFamily: kPoppins,
    color: AppColors.textSecondary,
  );
  static TextStyle poppinsRegular30 = const TextStyle(
    fontSize: 30,
    fontFamily: kPoppins,
    color: AppColors.tertiary,
  );
  static TextStyle poppinsRegular24 = const TextStyle(
    fontSize: 24,
    fontFamily: kPoppins,
    color: AppColors.tertiary,
  );
  static TextStyle poppinsRegular12 = const TextStyle(
    fontSize: 12,
    fontFamily: kPoppins,
    color: AppColors.textPrimary,
  );
  static TextStyle poppinsSemiBold12 = const TextStyle(
    fontSize: 12,
    fontFamily: kPoppins,
    color: AppColors.textPrimary,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppinsSemiBold18 = const TextStyle(
    fontSize: 18,
    fontFamily: kPoppins,
    color: AppColors.textPrimary,
    fontWeight: FontWeight.w600,
  );
}
