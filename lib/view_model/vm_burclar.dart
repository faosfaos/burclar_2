// ignore_for_file: avoid_print

import 'package:get/state_manager.dart';
import '../model/model_burc.dart';
import '../utility/my_data.dart';

class VmBurclar extends GetxController {
  var burclar = <ModelBurc>[].obs;
  VmBurclar() {
    _burclariEkle();
  }

  void benimButtonumTiklandiginda() {
    print("Benim Buttona tıklandı");
  }

  void _burclariEkle() {
    for (var i = 0; i < 12; i++) {
      String kResim = "${MyData.burc_adlari[i].toLowerCase()}${(i + 1)}.png";
      String bResim = "${MyData.burc_adlari[i].toLowerCase()}_b${(i + 1)}.png";
      ModelBurc burc = ModelBurc(
        isim: MyData.burc_adlari[i],
        tarih: MyData.burc_tarihleri[i],
        ozellikler: MyData.burc_ozellikleri[i],
        kucukResim: kResim,
        buyukResim: bResim,
      );
      burclar.add(burc);
    }
  }
}
