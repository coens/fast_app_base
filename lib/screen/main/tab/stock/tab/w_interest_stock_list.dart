import 'package:fast_app_base/screen/main/tab/stock/stocks_dummy.dart';
import 'package:flutter/material.dart';

import 'w_stock_item.dart';

class InterestStockList extends StatefulWidget {
  const InterestStockList({super.key});

  @override
  State<InterestStockList> createState() => _InterestStockListState();
}

class _InterestStockListState extends State<InterestStockList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInterestStocks.map((e) => StockItem(e)).toList()
      ],
    );
  }
}
