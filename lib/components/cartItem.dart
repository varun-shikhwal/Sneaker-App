import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/Shoe.dart';
import '../models/cart.dart';
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({Key? key,required this.shoe}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade100,
            borderRadius: BorderRadius.circular(13),
          ),
          margin: EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: Image.asset(widget.shoe.imagePath),
            title: Text(widget.shoe.name),
            subtitle: Text(widget.shoe.price) ,
             trailing: IconButton(icon: Icon(Icons.delete),
               onPressed: removeItemFromCart,),
          ),
        ),

      ],
    );
  }
}

