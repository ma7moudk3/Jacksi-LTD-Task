import 'package:flutter/material.dart';

class ColorManager {
  ColorManager._();

  static Color primary = HexColor.fromHex("#E51E24");
  static Color accent = HexColor.fromHex("#000000");
  static Color greenIcon = HexColor.fromHex("#23B180");
  static Color greenButton = HexColor.fromHex("#03C988");
  static Color blueIcon = HexColor.fromHex("#6081C4");
  static Color primaryDark = HexColor.fromHex("#200E32");
  static Color instagramIcon = HexColor.fromHex("#EA7E60");
  static Color red = HexColor.fromHex("#E25F64");
  static Color redAccent = HexColor.fromHex("#F0544C");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color darkGrey2 = HexColor.fromHex("#9F9F9F");
  static Color badgeBlue = HexColor.fromHex("#3C79F5");
  static Color dividerColor = HexColor.fromHex("#EEEEEE");
  static Color notificationBadgeColor = HexColor.fromHex("#FFD24C");
  static Color dividerColor2 = HexColor.fromHex("#D9D9D9");
  static Color textFieldBorderColor = HexColor.fromHex("#EAEAEA");
  static Color cardColor = HexColor.fromHex("#F9F9F9");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");
  static Color fontColor = HexColor.fromHex("#2B2B2B");
  static Color fontColor2 = HexColor.fromHex("#262626");
  static Color fontColor3 = HexColor.fromHex("#555555");
  static Color fontColor4 = HexColor.fromHex("#5B5B5B");
  static Color fontColor5 = HexColor.fromHex("#3A3A3A");
  static Color fontColor6 = HexColor.fromHex("#D6D4D4");
  static Color facebookBlue = HexColor.fromHex("#106BB9");
  static Color googleRed = HexColor.fromHex("#D42B25");
  static Color appleBlack = HexColor.fromHex("#000000");
  static Color appBarFontColor = HexColor.fromHex("#333333");
  static Color greyFontColor = HexColor.fromHex("#4A4A4A");
  static Color greyFontColor2 = HexColor.fromHex("#8F8E8E");
  static Color shadowColor = HexColor.fromHex("#545596").withOpacity(0.2);
  static Color yellow = HexColor.fromHex("#F7B500");
  static Color lightYellow = HexColor.fromHex("#FFF6DB");
  static Color textFieldColor = HexColor.fromHex('#000000').withOpacity(0.08);
  static Color fontColor7 = HexColor.fromHex('#BEBABA');
  static Color white2 = HexColor.fromHex('#F7F9FB');
  // new colors
  static Color black = HexColor.fromHex("#2B2B2B");
  static Color black18 = HexColor.fromHex("#181818");
  static Color black47 = HexColor.fromHex("#474747");
  static Color blue = HexColor.fromHex("#32C5FF");
  static Color darkBlue = HexColor.fromHex("#0091FF");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color transparent = Colors.transparent;
  static Color error = HexColor.fromHex("#E94125");
  static Color grey = HexColor.fromHex("#7A7A7A");
  static Color greyC1 = HexColor.fromHex("#C1C0C0");
  static Color grey2 = HexColor.fromHex("#696969");
  static Color grey3 = HexColor.fromHex('#4D4D4D');
  static Color grey4 = HexColor.fromHex('#F8F8F8');
  static Color grey5 = HexColor.fromHex('##707070');
  static Color grey6 = HexColor.fromHex('#E1E1E1');
  static Color grey7 = HexColor.fromHex('#F2F2F2');
  static Color grey8 = HexColor.fromHex('#585858');
  static Color grey9 = HexColor.fromHex('#F8F8F8');
  static Color grey10 = HexColor.fromHex('#F7F7F7');
  static Color grey11 = HexColor.fromHex('#A0A0A0');
  static Color grey12 = HexColor.fromHex('#F3F3F3');
  static Color grey13 = HexColor.fromHex('#F6F6F6');
  static Color grey14 = HexColor.fromHex('#ECECEC');
  static Color borderGrey = HexColor.fromHex('#E9E9E9');
  static Color borderColor = HexColor.fromHex('#808080');
  static Color borderColor2 = HexColor.fromHex('#BEBABA');
  static Color borderColor3 = HexColor.fromHex("#EBEBEB");
  static Color shadow = HexColor.fromHex('#4B545A');
  static Color bottomNavBarTitleGrey = HexColor.fromHex('#8B8989');
  static Color bottomNavBarIconGrey = HexColor.fromHex('#C3C5CC');
  static Color blueAccent = HexColor.fromHex('#CBF6FF');
  static Color pinkAccent = HexColor.fromHex('#F39C93');
  static Color redAccent2 = HexColor.fromHex('#FC6C6C');
  static Color redAccent3 = HexColor.fromHex('#FC746A');
  static Color greenAccent = HexColor.fromHex('#8ADAA4');
  static Color green = HexColor.fromHex('#33B180');
  static Color gold = HexColor.fromHex('#FCAB28');
  static Color orangeAccent = HexColor.fromHex('#FFEBDF');
  static Color orange = HexColor.fromHex('#FA6400');
  static Color navy = HexColor.fromHex('#000080');
  static Color purple = HexColor.fromHex('#5B83F9');
  static Color brown = HexColor.fromHex('#FCAA6A');

  // Dark Theme
  static Color scaffoldDarkColor = HexColor.fromHex("#16202A");
  static Color darkPrimary = HexColor.fromHex("#FFBA50");
  static Color darkAccent = HexColor.fromHex("#080D11");
  static Color darkAccent2 = HexColor.fromHex("#0B1218");
  static Color darkShadowColor = HexColor.fromHex("#1F1F1F");
  static Color cardDarkColor = HexColor.fromHex("#1F1F1F");
  static Color blueGrey = HexColor.fromHex("#374553");

  // List Colors:
  static Color lightGreen = HexColor.fromHex("#1ecdc4");
  static Color textColor = HexColor.fromHex("#0c1430");
  static Color lightBlue = HexColor.fromHex("#7eccff");
  static Color darkOrange = HexColor.fromHex("#ffa348");
  static Color pink = HexColor.fromHex("#F06697");
  static Color pink2 = HexColor.fromHex("#DC6E8C");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
