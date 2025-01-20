// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../widgets/responsive_font_size.dart';

class StringStyles {
  static TextStyle font60(width) => TextStyle(
        color: Color(0xFFF9FAFB),
        fontSize: ResponsiveFontSize(60, width),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 1.20,
        letterSpacing: -1.20,
      );
  static TextStyle font60purple(width) => TextStyle(
        color: Color(0xFF1301D2),
        fontSize: ResponsiveFontSize(60, width),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 1.20,
        letterSpacing: -1.20,
      );
  static TextStyle font30(width) => TextStyle(
        color: Color(0xFFF9FAFB),
        fontSize: ResponsiveFontSize(30, width),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 1.20,
        letterSpacing: -0.60,
      );
  static TextStyle font30purple(width) => TextStyle(
        color: Color(0xFF560AB1),
        fontSize: ResponsiveFontSize(30, width),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 1.20,
        letterSpacing: -0.60,
      );
  static TextStyle font16(width) => TextStyle(
        color: Color(0xFFD1D5DB),
        fontSize: ResponsiveFontSize(16, width),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        height: 1.50,
      );

  static TextStyle font16semibold(width) => TextStyle(
        color: Color(0xFFD1D5DB),
        fontSize: ResponsiveFontSize(16, width),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 1.50,
      );
  static TextStyle font16gray(width) => TextStyle(
        color: Colors.grey,
        fontSize: ResponsiveFontSize(16, width),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
        height: 1.50,
      );

  static TextStyle font36(width) => TextStyle(
        color: Color(0xFFF9FAFB),
        fontSize: ResponsiveFontSize(36, width),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
        height: 1.11,
      );
  static TextStyle font36purple(width) => TextStyle(
        color: Color(0xFF1301D2),
        fontSize: ResponsiveFontSize(36, width),
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 1.20,
        letterSpacing: -1.20,
      );
  static TextStyle font14(width) => TextStyle(
        color: Color(0xFFD1D5DB),
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 1.43,
      );
  static TextStyle font20(width) => TextStyle(
        color: Color(0xFFD1D5DB),
        fontSize: 20,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        height: 1.40,
      );
  static TextStyle font20semibold(width) => TextStyle(
        color: Color(0xFFF9FAFB),
        fontSize: 20,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
        height: 1.40,
      );
}
