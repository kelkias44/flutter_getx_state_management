import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:getx_state_management/my_controller.dart';
import 'package:getx_state_management/total_page.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  'Books',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(
                    onPressed: () => c.increment(), 
                    icon: const Icon(Icons.add, color: Colors.white,) ),
                ),
                const SizedBox(width: 20,),
                Obx(()=> Text(
                  c.books.toString(),
                  style: const TextStyle(
                    fontSize: 30
                  ),
                )),
                const SizedBox(width: 20,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(
                    onPressed: () => c.decrement(), 
                    icon: const Icon(Icons.remove, color: Colors.white,) ),
                ),
              ],
              ),
            const SizedBox(height: 20,),
            Row(
              children: [
                const Text(
                  'Pens',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(
                    onPressed: () => c.incrementPens(), 
                    icon: const Icon(Icons.add, color: Colors.white,) ),
                ),
                const SizedBox(width: 20,),
                Obx(()=> Text(
                  c.pens.toString(),
                  style: const TextStyle(
                    fontSize: 30
                  ),
                )),
                const SizedBox(width: 20,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(
                    onPressed: () => c.decrementPens(), 
                    icon: const Icon(Icons.remove, color: Colors.white,) ),
                ),
              ],
              ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 150,
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
                    onPressed: () => Get.to(() => TotalPage()),
                    child: const Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                      ),
                    )
                    ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}