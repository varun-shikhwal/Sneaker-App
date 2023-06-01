import 'package:flutter/material.dart';
import 'package:sneaker_app/pages/homePage.dart';
class introPage extends StatelessWidget {
  const introPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            children:  [
              // LOGO
              Padding(
                padding:  EdgeInsets.all(60.0),
                child: Image(
                  image: AssetImage(
                    'assets/images/nike.png'
                  ),
                  height: 299,
                ),
              ),
              const SizedBox(height: 10,),
              // TITLE
              Text('Just Do It',style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),),
               const SizedBox(height: 20,),
              // SUB TITLE
              Text(textAlign: TextAlign.center,
              'Brand new sneakers and custom kicks made with permiuum quality',style: TextStyle(
                 color: Colors.blueGrey,
              ),),
              const SizedBox(height: 20,),
              // SHOP BUTTON
              GestureDetector(
                onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => homePage(),),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 69,
                      margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text('Shop Now',style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                      )),
                ),
              ),

            ],
          ),
        ),
      ),


    );
  }
}

