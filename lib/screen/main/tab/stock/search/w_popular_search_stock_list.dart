import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/collection/sort_functions.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:flutter/material.dart';

import 'popular_stock_dummy.dart';
import 'w_popular_stock_item.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            "인기 검색".text.bold.make(),
            emptyExpanded,
            "오늘 ${DateTime.now().formattedTime} 기준".text.make(),
            // ...popularStockList.mapIndexed((element, index) => PopularStockItem(stock:element, number: index+1)).toList()
          ],
        ).pSymmetric(h:20),
        height20,
        ...popularStockList.mapIndexed((element, index) => PopularStockItem(stock:element, number: index+1)).toList()
      ],
    );
  }
}
