import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalStateWidgetPage extends StatelessWidget {
  const LocalStateWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local State'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueBuilder<bool?>(
            initialValue: true,
            builder: (obscureValue, updater) {
              return TextFormField(
                obscureText: obscureValue!,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {
                      updater(!obscureValue);
                    },
                  ),
                ),
              );
            },
          ),
          ObxValue<RxBool>((obscureData) {
            return TextFormField(
              obscureText: obscureData.value,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye_outlined),
                  onPressed: () {
                    obscureData.toggle();
                  },
                ),
              ),
            );
          }, true.obs)
        ],
      )),
    );
  }
}
