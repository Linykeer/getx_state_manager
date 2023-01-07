import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_manager/atualizacao/page_atualizacao.dart';
import 'package:getx_state_manager/basico/reatividade_page.dart';
import 'package:getx_state_manager/controllers/controllers_home_page.dart';
import 'package:getx_state_manager/controllers/getxcontroller_exemple/controller.dart';
import 'package:getx_state_manager/controllers/getxcontroller_exemple/getxcontroller_exemple_page.dart';
import 'package:getx_state_manager/getx_widget/getx_widget_page.dart';
import 'package:getx_state_manager/home_page.dart';
import 'package:getx_state_manager/local_state_widget/local_state_widget_page.dart';
import 'package:getx_state_manager/tipos/tipos_reativos_genericos.dart';
import 'package:getx_state_manager/tipos/tipos_reativos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/basico', page: () => ReatividadePage()),
        GetPage(name: '/tiposReativos', page: () => TiposReativosPage()),
        GetPage(name: '/tiposGenericos', page: () => TiposReativosGenericos()),
        GetPage(name: '/atualizacaoObjeto', page: () => PageAtualizacao()),
        GetPage(
            name: '/controllers',
            page: () => const ControllersHomePage(),
            children: [
              GetPage(
                  name: '/getxController',
                  binding: BindingsBuilder(() {
                    Get.lazyPut(() => Controller());
                  }),
                  page: () => const GetxcontrollerExemplePage())
            ]),
        GetPage(name: '/getxWidget', page: () => const GetxWidgetPage()),
        GetPage(name: '/localState', page: () => const LocalStateWidgetPage()),
      ],
    );
  }
}
