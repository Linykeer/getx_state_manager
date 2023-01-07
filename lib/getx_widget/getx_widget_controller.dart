import 'package:get/get.dart';

class GetxWidgetController extends GetxController {
  final _nome = RxString('Linykeer Almeida');
  String get nome => _nome.value;

  void alterarNome() {
    _nome('Luis Henrique');
  }
}
