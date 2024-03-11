import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'halaman2.dart';

class HalamanSatu extends StatelessWidget {
  // const MyApp({super.key});
  bool isUppercase(String str) {
    return str == str.toUpperCase();
  }

  var tamiya = 'magnum saber'.obs;

  void ubah() {
    if (isUppercase(tamiya.value)) {
      tamiya.value = tamiya.value.toLowerCase();
    } else {
      tamiya.value = tamiya.value.toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Halaman Satu')),
        body: Column(
          children: [
            // child: Obx(() => Text('${tamiya}')),
            Container(
                margin: EdgeInsets.symmetric(vertical: 200),
                child: Column(
                  children: [
                    Obx(
                      () => Text('Tamiya saya ${tamiya}'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        child: Text("Ubah text"),
                        onPressed: () => ubah(),
                      ),
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Halaman Selanjutnya"),
                  onPressed: () async {
                    await Get.to(HalamanDua());
                    // print("Button Clicked");
                  },
                ),
              ],
            ),
          ],
        )

        // Center(
        //   child: Obx(() => Text('${tamiya}')),
        // ),
        );
  }
}
