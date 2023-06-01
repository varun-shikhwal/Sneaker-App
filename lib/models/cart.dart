import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'Shoe.dart';

class Cart extends ChangeNotifier{


  // list of shoes for sale
  List<Shoe> shoeShop=[
    Shoe(
      name: 'Zoom Freak',
      price: '250',
      description: 'Giannis is an incessant storm of stamina and skill that keeps coming at opponents for 4 quarters or more. ' ,
      imagePath: 'assets/images/zoomFreak.png',
    ),
    Shoe(
        name: 'Air Force 1',
        price: '250',
        description: 'The forward-thinking design of his latest signature shoe' ,
        imagePath: 'assets/images/airforce1.png',
    ),
    Shoe(
        name: 'JumpMan Two Trey',
        price: '160',
        description:
           'You\'ve got the hops and the speed-lace up in shoes that enhances what you bring to the court ',
        imagePath: 'assets/images/jumpman.png',
    ),
    Shoe(
        name: 'Kobe Elite Victory',
        price: '330',
        description: 'Elevate your game and your hops. Charged with Max Air cushioning in the heel, this lightweight, secure shoe helps you get off the ground confidently and land comfortably. ' ,
        imagePath: 'assets/images/Nike Kobe Elite Victory.jpg',
    ),
    Shoe(
        name: 'Lebron XX SE',
        price: '250',
        description: 'LeBron James has refused to settle for anything less than greatness, even when he was the one setting the standard for generations to come.' ,
        imagePath: 'assets/images/LebronXX.png',
    ),
    Shoe(
        name: 'Nike Precision 6',
        price: '220',
        description: 'Create space, stop on a dime, shoot off the dribble—do it all with the Nike Precision 6. Its designed to enable quick players to shift speeds and change directions while staying in control.' ,
        imagePath: 'assets/images/precision6.png',
    ),

  ];
  // list of items in user cart
   List<Shoe> userCart=[];
  // get list of shoes for sale
  List<Shoe> getshoeList(){
    return shoeShop;
  }
  // get cart
   List<Shoe> getUserCart(){
    return userCart;
   }

  // add items to cart
   void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
   }

  // remove items from cart
    void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
    }

    // void payTheShoe(Shoe shoe){
    // userCart.sell(shoe);
    // notifyListeners();
    // }
}