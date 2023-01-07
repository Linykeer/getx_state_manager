import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_manager/controllers/getxcontroller_exemple/controller.dart';

class GetxcontrollerExemplePage extends StatefulWidget {
  const GetxcontrollerExemplePage({Key? key}) : super(key: key);

  @override
  State<GetxcontrollerExemplePage> createState() =>
      _GetxcontrollerExemplePageState();
}

class _GetxcontrollerExemplePageState extends State<GetxcontrollerExemplePage> {
  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build getx page');

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX controller page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(Get.find<Controller>().nome.value);
            }),
            ElevatedButton(
                onPressed: () {
                  Get.find<Controller>().alterarDados();
                },
                child: const Text('Alterar Nome')),
            ElevatedButton(
                onPressed: () {
                  Get.reload<Controller>();
                  setState(() {});
                },
                child: const Text('Recarregar Controller'))
          ],
        ),
      ),
    );
  }
}
