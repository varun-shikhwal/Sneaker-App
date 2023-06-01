import 'package:flutter/material.dart';

import '../models/Shoe.dart';
class shoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  shoeTile({Key? key, required this.shoe, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 290,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          // SizedBox(height: 10,),
          // shoe pic
             ClipRRect(
                 borderRadius: BorderRadius.circular(15),
                 child: Image.asset(shoe.imagePath)),
          SizedBox(height: 30,),
          // description
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(shoe.description,style: TextStyle(
              color: Colors.blueGrey.shade600,
            ),),
          ),
          SizedBox(height: 20,),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // shoe name
                    Text(shoe.name,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    const SizedBox(height: 5,),
                    // price
                    Text('\$'+shoe.price,style: TextStyle(
                      color: Colors.blueGrey,
                    ),),
                  ],
                ),
                //plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding:const EdgeInsets.all(20),
                      decoration:const  BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        )
                      ),
                      child:const Icon(Icons.add,color: Colors.white,)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

