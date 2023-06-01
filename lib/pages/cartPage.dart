import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cartItem.dart';
import '../components/paytile.dart';
import '../models/Shoe.dart';
import '../models/cart.dart';
class cartPage extends StatefulWidget {

 cartPage({Key? key}) : super(key: key);

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {

  // void BuyNowShoe(Shoe shoe){
  //   showDialog(context: context, builder: (context) => AlertDialog(
  //     backgroundColor: Colors.black,
  //     title: Text('Order Placed!',style: TextStyle(
  //       color: Colors.white,
  //     ),),
  //
  //   ),);
  // }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          const  Text(
            'My Cart',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(height: 20,),

          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
            // get individual shoe
            Shoe individualShoe=value.getUserCart()[index];
            // return cart item
            return CartItem(
              shoe: individualShoe,
            );
          },)),

          // pay button
           payTile(),

        ],
      ),
    ),);
  }
}

