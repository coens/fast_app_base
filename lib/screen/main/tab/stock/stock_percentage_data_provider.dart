import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract mixin class StockPercentageProvider {
  int get currentPrice;
  int get yesterdayClosePrice;



  double get todayPercentage => ((currentPrice-yesterdayClosePrice)/yesterdayClosePrice*100).toPrecision(2);

  bool get isPlus => currentPrice>yesterdayClosePrice;
  bool get isMinus => currentPrice<yesterdayClosePrice;
  bool get isSame => currentPrice==yesterdayClosePrice;

  // String get symbol => isSame ? "" : isPlus ? "+" : "";
  String get symbol => isPlus ? "+" : "";
  String get todayPrecentageString => "${symbol}$todayPercentage %";
  Color getPriceColor(BuildContext context) => isSame ? context.appColors.lessImportant : isPlus ? context.appColors.plus : context.appColors.minus;
}