import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'search_stock_data.dart';
import 'w_popular_search_stock_list.dart';
import 'w_search_autocomplete_list.dart';
import 'w_search_history_stock_list.dart';
import 'w_stock_search_app_bar.dart';

class SearchStockScreen extends StatefulWidget {
  const SearchStockScreen({super.key});

  @override
  State<SearchStockScreen> createState() => _SearchStockScreenState();
}

class _SearchStockScreenState extends State<SearchStockScreen> with SearchStockDataProvider{
  final TextEditingController controller = TextEditingController();


  @override
  void initState() {
    Get.put(SearchStockData());

    controller.addListener(() {
      searchData.search(controller.text);
    });

    super.initState();
  }

  @override
  void dispose() {
    Get.delete<SearchStockData>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockSearchAppBar(
        controller: controller,
      ),
      body: Obx(
        () => searchData.autoCompleteList.isEmpty
            ? ListView(
                children: [SearchHistoryStockList(), PopularSearchStockList()],
              )
            : SearchAutoCompleteList(controller),
      ),
    );
  }
}
