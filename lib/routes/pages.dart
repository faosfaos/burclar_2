import 'package:burclar_2/routes/routes.dart';
import 'package:burclar_2/view/burclar.dart';
import 'package:burclar_2/view/detay.dart';
import 'package:burclar_2/view_model/vm_burclar.dart';
import 'package:burclar_2/view_model/vm_detay.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.Burc,
      page: () => Burclar(),
      binding: BindingsBuilder(() {
        Get.put(VmBurclar());
      }),
    ),
    GetPage(
      name: Routes.Detay,
      page: () => Detay(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.put(VmDetay());
      }),
    ),
  ];
}
