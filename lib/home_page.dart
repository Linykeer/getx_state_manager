import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Get.toNamed('/basico');
            },
            child: const Text('Basico Reatividade'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed('/tiposReativos');
            },
            child: const Text('Tipos Reativos'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed('/tiposGenericos');
            },
            child: const Text('Tipos Genericos'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed('/atualizacaoObjeto');
            },
            child: const Text('Atualização de Objeto'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed('/controllers');
            },
            child: const Text('Getx Controllers'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed('/getxWidget');
            },
            child: const Text('Getx Widget'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed('/localState');
            },
            child: const Text('Local State'),
          ),
        ],
      )),
    );
  }
}
