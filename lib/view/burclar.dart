// ignore_for_file: must_be_immutable, unnecessary_brace_in_string_interps

import 'package:burclar_2/routes/routes.dart';
import 'package:burclar_2/utility/my_const.dart';
import 'package:burclar_2/view_model/vm_burclar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Burclar extends StatelessWidget {
  Burclar({super.key});
  VmBurclar vmBurclar = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: "- BURÇLAR -"
              .text
              .xl3
              .shadow(2, 2, 1, Colors.black)
              .makeCentered(),
        ),
        body: _buildBody());
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
      itemCount: 12,
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
        leading: Image.asset("${imagePath}${burc.kucukResim}"),
        title: burc.isim.text.bold.xl3.make(),
        subtitle: burc.tarih.text.bold.color(subColor).make(),
        trailing: Icon(
          Icons.arrow_forward,
          color: subColor,
        ),
      ),
    );
  }
}
