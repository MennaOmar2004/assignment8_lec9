import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800, 
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        title: Center(
          child: Text(
          "My Shop",
          style: TextStyle(color: Colors.white)
          ),
      ),
        actions: [
          IconButton(onPressed: (){},icon: Icon(Icons.shopping_cart, color: Colors.white,)),
          IconButton(onPressed: (){},icon: Icon(Icons.notifications, color: Colors.white,)),
        ]
      ),
      body : Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Back!", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
            SizedBox(height: 6,),
            Text("Find the best products for you", style: TextStyle(fontSize: 18 , color: Colors.grey),),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade800,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: Size(200, 40)
              ),
              onPressed: (){},
              child: Text("Shop Now" ,style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 10,),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: Size(200, 40)
              ),
              onPressed: (){},
              child: Text("View offers" ,style: TextStyle(color: Colors.blue.shade800),),
            ),
            SizedBox(height: 15,),
            TextButton(onPressed: (){},
             child: Text("Skip" ,style: TextStyle(fontSize: 16, color: Colors.blue.shade800),),
            )
              
          ],

      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade800,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ]
      ),
    );
  }
  
}