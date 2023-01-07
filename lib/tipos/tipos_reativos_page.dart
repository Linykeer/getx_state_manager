import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposReativosPage extends StatelessWidget {
  final nome = RxString('Linykeer Almeida');
  final isAluno = RxBool(true);
  final qtdCursos = RxInt(2);
  final valorCurso = RxDouble(1499.99);
  final jornadas = RxList(['Jornada GetX', 'Jornada Completa']);
  final aluno = RxMap({
    'id': 123,
    'nome': 'Linykeer',
  });

  TiposReativosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            debugPrint('Montando Id do aluno');
            return Text('Id do Aluno ${aluno['id']}');
          }),
          Obx(() {
            debugPrint('Montando nome do aluno');
            return Text('Nome do Aluno ${aluno['nome']}');
          }),
          Obx(() {
            return Column(
              children: jornadas.map(Text.new).toList(),
            );
          }),
          ElevatedButton(
              onPressed: () {
                aluno['id'] = 10;
              },
              child: const Text('Alterar Id')),
          ElevatedButton(
              onPressed: () {
                jornadas.assign('Jornada Dart');
              },
              child: const Text('Adicionar Jornada'))
        ],
      )),
    );
  }
}
