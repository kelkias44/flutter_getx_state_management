import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller.dart';

class TotalPage extends StatelessWidget {
  final MyController c = Get.put(MyController());

  TotalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Total Items',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue
              ),
            ),
            const SizedBox(height: 10,),
            Obx(()=> Text(
                c.sum.toString(),
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.redAccent
                ),
              )),
            const SizedBox(height: 10,),
            Container(
                width: 180,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  onPressed: () => Get.back(),
                  child: const Text(
                    'Go back',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),
                  )
                  ),)                
          ]
          ),
      ),
    );
  }
}