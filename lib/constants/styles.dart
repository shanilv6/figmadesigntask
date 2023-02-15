import 'package:figma/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Textstyles {
  static final TextStyle profiletext =GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 25,
    color: ColorConstant.white
  );
  static final TextStyle nametext =GoogleFonts.roboto(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: ColorConstant.white
  );
  static final TextStyle pricetext =GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: ColorConstant.black
  );
  static final TextStyle locationtext =GoogleFonts.montserrat(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: ColorConstant.white
  );

  static final TextStyle detailtext1  =GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: ColorConstant.white
  );
  static final TextStyle detailtext2  =GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: ColorConstant.white
  );
  static final TextStyle detailtext3  =GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: ColorConstant.black
  );
  static final TextStyle calltext  =GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: ColorConstant.black
  );
  static final TextStyle chattext  =GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: ColorConstant.white
  );

}