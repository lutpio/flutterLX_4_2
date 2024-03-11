import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'halaman4.dart';

class HalamanTiga extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Halaman Tiga')),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 200),
              child: ElevatedButton(
                child: Text("Buka Dialog"),
                onPressed: () => {
                  Get.dialog(AlertDialog(
                    title: Text('Ini Dialog'),
                    content: Text('Ini isi konten dari dialog halaman 3'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('Ok')),
                      // TextButton(
                      //     onPressed: () {
                      //       Get.back();
                      //     },
                      //     child: const Text('Tidak')),
                      // TextButton(
                      //     onPressed: () {
                      //       Get.back();
                      //     },
                      //     child: const Text('Iya'))
                    ],
                  ))
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Kembali"),
                  onPressed: () {
                    Get.back();
                  },
                ),
                ElevatedButton(
                  child: Text("Halaman Selanjutnya"),
                  onPressed: () async {
                    await Get.to(HalamanEmpat());
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
