import 'dart:ui';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/stock_percentage_data_provider.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Stock extends PopularStock with StockPercentageProvider{
  final String stockImagePath;

  Stock({
    required this.stockImagePath,
    required super.yesterdayClosePrice,
    required super.currentPrice,
    required super.stockName,
  });
  //
  // double get todayPercentage => ((currentPrice-yesterdayClosePrice)/yesterdayClosePrice*100).toPrecision(2);
  //
  // bool get isPlus => currentPrice>yesterdayClosePrice;
  // bool get isMinus => currentPrice<yesterdayClosePrice;
  // bool get isSame => currentPrice==yesterdayClosePrice;
  //
  // String get symbol => isSame ? "" : isPlus ? "+" : "-";
  // String get todayPrecentageString => "${symbol}$todayPercentage %";
  // Color getPriceColor(BuildContext context) => isSame ? context.appColors.lessImportant : isPlus ? context.appColors.plus : context.appColors.minus;
}
