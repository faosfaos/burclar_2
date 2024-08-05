import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import '../view/burclar.dart';
import '../view/detay.dart';
import '../view_model/vm_burclar.dart';
import '../view_model/vm_detay.dart';
import 'routes.dart';

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
