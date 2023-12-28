import 'package:fast_app_base/screen/main/tab/stock/vo_simple_stock.dart';

import 'stock_percentage_data_provider.dart';

class PopularStock extends SimpleStock with StockPercentageProvider{
  @override
  final int yesterdayClosePrice;

  @override
  final int currentPrice;

  PopularStock({
    required this.yesterdayClosePrice,
    required this.currentPrice,
    required String stockName,
  }) : super(stockName);
}
