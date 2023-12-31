import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/data/preference/prefs.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/d_number.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:fast_app_base/screen/opensource/s_opensource.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isPushOn = false;

  @override
  void initState() {
    isPushOn = Prefs.isPushOn.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "설정".text.make(),
      ),
      body: ListView(
        children: [
          Obx(
            () => SwitchMenu(
              "푸시 설정",
              Prefs.isPushOnRx.get(),
              onChanged: (isOn) {
                Prefs.isPushOnRx.set(isOn);
              },
            ),
          ),
          Obx(
            () => Slider(
              value: Prefs.siliderPosition.get(),
              onChanged: (value) {
                //Prefs.siliderPosition.set(value);
                Prefs.siliderPosition(value);
              },
            ),
          ),
          Obx(
            () => BigButton(
              '날짜 ${Prefs.birthday.get() == null ? "" : Prefs.birthday.get()?.formattedDate}',
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(10.days),
                  lastDate: DateTime.now().add(6.days),
                );

                if (date != null) {
                  Prefs.birthday.set(date);
                }
              },
            ),
          ),
          Obx(
            () => BigButton(
              '저장된 숫자 ${Prefs.number.get().toString()}',
              onTap: () async {
                final number = await NumberDialog().show();
                if (number != null) {
                  Prefs.number.set(number);
                }
              },
            ),
          ),
          BigButton(
            "오픈소스 화면",
            onTap: () {
              Nav.push(OpensourceScreen());
            },
          )
        ],
      ),
    );
  }
}
