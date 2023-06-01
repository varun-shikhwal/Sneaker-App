import 'package:flutter/material.dart';

import '../models/Shoe.dart';
class payTile extends StatefulWidget {

  // void Function()? onTap;
  payTile({Key? key}) : super(key: key);

  @override
  State<payTile> createState() => _payTileState();
}

class _payTileState extends State<payTile> {

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(

      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4,-4),
                spreadRadius: 1,
                blurRadius: 7,
              ),
              BoxShadow(
                color: Colors.blueGrey.shade300,
                offset: Offset(4,4),
                spreadRadius: 1,
                blurRadius: 5,
              )
            ]
        ),
        child: Center(
          child: Text(
            '\$'+' Pay Now',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          ),
        ),
      ),
    );
  }
}

