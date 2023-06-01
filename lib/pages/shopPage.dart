import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoeTile.dart';
import '../models/Shoe.dart';
import '../models/cart.dart';
class shopPage extends StatefulWidget {
   shopPage({Key? key}) : super(key: key);

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {

  // add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

    // alert the user, shoe successfully addes

    showDialog(context: context, builder: (context) => AlertDialog(
      backgroundColor: Colors.black,
      title: Text('Successfully added!',style: TextStyle(
        color: Colors.white,
      ),),
      content: Text('Check Your Cart',style: TextStyle(
        color: Colors.white,
      ),),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
              Text('Search'),
              Icon(
                Icons.search,
                color: Colors.blueGrey,
              )
            ],
          ),

        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            'everyone flies.. some fly longer than others',
            style: TextStyle(
              color: Colors.blueGrey.shade600,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:const [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text('Hot Picks 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26, color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10,),
        // Expanded(child: ListView.builder(itemBuilder: (context, index) {
        //   Shoe shoe=Shoe(
        //       name: 'Air Jordan',
        //       price: '290',
        //       description: 'Cool shoe',
        //       imagePath: 'assets/images/airJordan.png',
        //   );
        //   return shoeTile(shoe: shoe);
        //   },
        //  ),
        // ),

        // list of shoes for sale
        Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                // get a shoe from shop list
                Shoe shoe= value.getshoeList()[index];

                // return the shoe
                return shoeTile(shoe: shoe,onTap: () => addShoeToCart(shoe),);
              },)),

        const Padding(
          padding:  EdgeInsets.only(top: 25.0,left: 25.0,right: 25.0),
          child: Divider(color: Colors.white,),
        )
      ],
    ),);
  }
}

