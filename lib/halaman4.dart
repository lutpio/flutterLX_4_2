import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HalamanEmpat extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Halaman Empat')),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 200),
              child: ElevatedButton(
                child: Text("Buka Bottomsheets"),
                onPressed: () => {
                  Get.bottomSheet(Container(
                    height: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text('ini bottom sheets'),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Ok"))
                      ],
                    ),
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
