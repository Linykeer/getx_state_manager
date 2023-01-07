import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_manager/getx_widget/getx_widget_controller.dart';

class GetxWidgetPage extends StatelessWidget {
  const GetxWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Widget'),
      ),
      body: Center(
        child: GetX<GetxWidgetController>(
          init: GetxWidgetController(),
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.nome),
                ElevatedButton(
                    onPressed: () {
                      controller.alterarNome();
                    },
                    child: const Text('Alterar Nome')),
              ],
            );
          },
        ),
      ),
    );
  }
}
