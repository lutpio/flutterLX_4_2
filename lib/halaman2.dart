import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'halaman3.dart';

class HalamanDua extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Halaman Dua')),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 200),
              child: ElevatedButton(
                child: Text("Buka Snackbar"),
                onPressed: () =>
                    {Get.snackbar('Pesan', 'ini Snackbar halaman 2')},
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
                    await Get.to(
                      HalamanTiga(),
                    );
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
