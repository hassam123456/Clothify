

import 'package:e_shop/Com/cartController.dart';
import 'package:e_shop/Com/cartItem.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:get/state_manager.dart';

class CartScreens extends StatelessWidget {

final CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  AppBar(

        title: Text("Required Service Details"),

      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ListView(
              shrinkWrap: true,
              children: new List.generate(
                  5, (i) => CartItem(
                  tittle: "Item #$i",
                  price: 50,

                ),

                )

            ),
            ElevatedButton(onPressed: (){}, child: Obx(()=> Text("Total Payment: "+cartController.total.value.toString(),
                        style: TextStyle(
              fontSize: 20,
              color: Colors.white,

            ),

            ))),
          Text(
            'Total Items (5)',
            style: TextStyle(
              fontSize: 22.0
            ),
          )
        ],
        ),
      ),
    );
  }
}
