import 'package:newsapp/const/const.dart';

class AppStyle {
 static TextStyle regular(
      {Color? color,
      String? fontfamily = Appfont.regular,
      FontWeight? fontweight = FontWeight.normal,
      double? fontsize = 14.0}) {
    return TextStyle(
        color: color,
        fontFamily: fontfamily,
        fontWeight: fontweight,
        fontSize: fontsize);
  }

 static  TextStyle semibold(
      {Color? color,
      FontWeight? fontweight = FontWeight.normal,
      double? fontsize = 14.0,
      String? fontfamily = Appfont.semibold}) {
    return TextStyle(
        color: color,
        fontFamily: fontfamily,
        fontWeight: fontweight,
        fontSize: fontsize);
  }

   static TextStyle bold(
      {Color? color,
      String? fontfamily = Appfont.bold,
      FontWeight? fontweight,
      double? fontsize = 14.0}) {
    return TextStyle(
        color: color,
        fontFamily: fontfamily,
        fontWeight: fontweight,
        fontSize: fontsize);
  
}

}
