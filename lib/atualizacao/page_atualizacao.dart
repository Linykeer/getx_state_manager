import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_manager/atualizacao/usuario_model.dart';

class PageAtualizacao extends StatelessWidget {
  final usuarioModel = UsuarioModel(
    email: 'Linykeeralmeida@gmail.com',
    name: 'Linykeer Silva',
    id: 20,
  ).obs;
  PageAtualizacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atualização Objetos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text('id: ${usuarioModel.value.id}');
            }),
            Obx(() {
              return Text('name: ${usuarioModel.value.name}');
            }),
            Obx(() {
              return Text('email: ${usuarioModel.value.email}');
            }),
            ElevatedButton(
                onPressed: () {
                  usuarioModel.value.name = 'Luis Almeida';
                  usuarioModel.refresh();
                },
                child: const Text('Refresh')),
            ElevatedButton(
                onPressed: () {
                  usuarioModel.value =
                      usuarioModel.value.copyWith(name: 'Angela Almeida');
                },
                child: const Text('CopyWith')),
            ElevatedButton(
                onPressed: () {
                  usuarioModel.update((usuario) {
                    usuario?.id = 512512;
                  });
                },
                child: const Text('Update')),
          ],
        ),
      ),
    );
  }
}
