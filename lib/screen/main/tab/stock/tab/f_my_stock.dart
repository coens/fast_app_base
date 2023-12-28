import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widget/w_height_and_width.dart';
import 'w_interest_stock_list.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  Widget getMyAccount(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            "계좌".text.make(),
            Row(
              children: [
                "443원".text.size(24).bold.white.make(),
                Arrow(),
                emptyExpanded,
                RoundedContainer(
                  child: "채우기".text.size(12).make(),
                  backgroundColor: context.appColors.buttonBackground,
                  radius: 8,
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                ),
              ],
            ),
            height30,
            Line(
              color: context.appColors.divider,
            ),
            height10,
            LongButton(title: "주문내역"),
            LongButton(title: "판매수익"),
          ],
        ),
      );

  Widget getMyStocks(BuildContext context) => Column(
    children: [
      Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: context.appColors.roundedLayoutBackground,
            child: Column(
              children: [
                height30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "관심주식".text.bold.make(),
                    "편집하기".text.color(context.appColors.lessImportant).bold.make(),
                  ],
                ),
                height30,
                Tap(
                  onTap: () {
                    context.showSnackbar('기본');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "기본".text.bold.make(),
                        Arrow(
                          direction: AxisDirection.up,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      InterestStockList().pSymmetric(h: 20),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context),
        height20,
        getMyStocks(context),
      ],
    );
  }
}

