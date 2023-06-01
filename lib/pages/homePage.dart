import 'package:flutter/material.dart';
import 'package:sneaker_app/components/bottomNavBar.dart';
import 'package:sneaker_app/pages/shopPage.dart';

import 'cartPage.dart';
class homePage extends StatefulWidget {

  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndex=0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex
      =index;
    });
  }
  final List<Widget> _pages=[
     shopPage(),

    cartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index)=> navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
             icon: const Icon(Icons.menu,color: Colors.black,),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey.shade800,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children:  [
                DrawerHeader(
                    child: Image.asset('assets/images/nike.png'),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.blueGrey.shade800,
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.only(left: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const  Padding(
                  padding:  EdgeInsets.only(left: 20.0),
                  child: ListTile(
                    title: Text(
                      'About Us',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Exit',style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

