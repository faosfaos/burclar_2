// ignore_for_file: unnecessary_brace_in_string_interps
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:palette_generator/palette_generator.dart';

import '../model/model_burc.dart';
import '../utility/my_const.dart';

class VmDetay extends GetxController {
  var appBarColor = Rxn<Color>();

  void rengiBul(ModelBurc burc) async {
    PaletteGenerator generator = await PaletteGenerator.fromImageProvider(
        AssetImage("${AppProperty.imagePath}${burc.buyukResim}"));
    appBarColor.value = generator.dominantColor!.color;
  }
}
