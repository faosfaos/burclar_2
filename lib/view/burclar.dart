// ignore_for_file: must_be_immutable, unnecessary_brace_in_string_interps
import 'package:burclar_2/utility/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../routes/routes.dart';
import '../utility/my_const.dart';
import '../view_model/vm_burclar.dart';

class Burclar extends StatelessWidget {
  Burclar({super.key});
  VmBurclar vmBurclar = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            "- BURÇLAR -".text.xl3.shadow(2, 2, 1, Colors.black).makeCentered(),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return MyElevatedBotton(
      onPressed: vmBurclar.benimButtonumTiklandiginda,
      text: "Benim Buttonum",
      bold: true,
      backgroundColor: AppProperty.subColor,
      fontSize: 22,
      textColor: Colors.grey,
    ).box.color(AppProperty.mainColor).p12.make();
  }

  Widget _buildBody() {
    return _buildListViewBuilder();
  }

  Widget _buildListViewBuilder() {
    return ListView.builder(
      padding: const EdgeInsets.only(
        left: 4,
        right: 4,
        top: 8,
        bottom: 400,
      ),
      itemBuilder: (context, index) {
        return _buildListTile(index);
      },
      itemCount: vmBurclar.burclar.length,
    );
  }

  Widget _buildListTile(int index) {
    var burc = vmBurclar.burclar[index];
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        onTap: () {
          Get.toNamed(Routes.Detay, arguments: burc);
        },
        leading: Image.asset("${AppProperty.imagePath}${burc.kucukResim}"),
        title: burc.isim.text.bold.xl3.make(),
        subtitle: burc.tarih.text.bold.color(AppProperty.subColor).make(),
        trailing: Icon(
          Icons.arrow_forward,
          color: AppProperty.subColor,
        ),
      ),
    );
  }
}
