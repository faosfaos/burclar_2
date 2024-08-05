// ignore_for_file: must_be_immutable, unnecessary_brace_in_string_interps

import 'package:burclar_2/model/model_burc.dart';
import 'package:burclar_2/utility/my_const.dart';
import 'package:burclar_2/view_model/vm_detay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Detay extends StatelessWidget {
  Detay({super.key});
  ModelBurc burc = Get.arguments;
  VmDetay vmDetay = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text("${burc.isim} Burcu"),
      ), */
      body: _buildBody2(context),
    );
  }

  Widget _buildBody2(BuildContext context) {
    vmDetay.rengiBul(burc);
    return CustomScrollView(
      slivers: [
        Obx(() {
          return SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: vmDetay.appColor.value,
            flexibleSpace: FlexibleSpaceBar(
              title: "${burc.isim} Özellikleri".text.make(),
              //centerTitle: true,
              background: Image.asset(
                "${imagePath}${burc.buyukResim}",
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 250),
            child: [
              burc.ozellikler.text.bold.xl2.make().p(12),
            ].vStack(),
          ),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 200),
      children: [
        "".text.make().box.width(context.screenWidth).height(8).linearGradient([
          Colors.red,
          Colors.amber,
        ]).make(),
        Image.asset("assets/images/${burc.buyukResim}"),
        "".text.make().box.width(context.screenWidth).height(8).linearGradient([
          Colors.red,
          Colors.amber,
        ]).make(),
        const HeightBox(12),
        burc.ozellikler.text.xl2.bold.make().box.make().p(10),
      ],
    );
  }
}
