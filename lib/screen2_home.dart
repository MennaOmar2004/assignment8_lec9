
import 'package:flutter/material.dart';

class Screen2Home extends StatelessWidget {
  const Screen2Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      appBar: AppBar(
        toolbarHeight: 55,
        backgroundColor: Colors.grey.shade200,
        leadingWidth: 60,
        titleSpacing: 10,

        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Container(
            width: 38,
            height: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            child: Text(
              "S",
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good morning 👋",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Text(
              "Sara Ahmed",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none, size: 21),

              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search courses, books...',
                hintStyle: TextStyle(fontSize: 13),
                contentPadding: EdgeInsets.all(8),
                prefixIcon: Icon(Icons.search, color: Colors.grey, size: 21),
                suffixIcon: Container(
                  width: 35,
                  height: 35,
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue.shade900,
                  ),
                  child: Icon(Icons.menu, size: 18, color: Colors.white),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 5,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.blue.shade900),
                  gapPadding: 5,
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(20, 12, 15, 12),
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Learn Flutter",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "in 30 days",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(0, 32),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Start now",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    minimumSize: Size(0, 30),
                    visualDensity: VisualDensity.compact,
                  ),
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryBox(const Color.fromARGB(255, 176, 213, 244),"Code",Icon(Icons.code ,color: Colors.blue.shade900)),
                categoryBox(const Color.fromARGB(255, 237, 194, 191) , "Design",Icon(Icons.palette_outlined ,color: Colors.red)),
                categoryBox(const Color.fromARGB(255, 196, 237, 197),"Data",Icon(Icons.bar_chart,color: Colors.green)),
                categoryBox(const Color.fromARGB(255, 237, 227, 197),"Books",Icon(Icons.chrome_reader_mode_rounded ,color:Colors.amber.shade800)),
              ],
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    minimumSize: Size(0, 30),
                    visualDensity: VisualDensity.compact,
                  ),
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 5),

            popularItem("Flutter Basics", "12 leassons . 4h 20m", "\$19",Colors.blue.shade900 ,Icon(Icons.code,color: Colors.white,)),

            SizedBox(height: 10),

            popularItem("UI Design Basics", "8 leassons . 2h 45m", "\$15",Colors.orange,Icon(Icons.palette_outlined,color: Colors.white,)),
          ],
        ),
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue.shade800,
          unselectedItemColor: Colors.blueGrey,
          backgroundColor: Colors.white,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          iconSize: 21,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Saved",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }

  Widget categoryBox(Color color , String text , Icon icon) {
    return Column(
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: color,
          ),
          child: icon,
        ),
        SizedBox(height: 4),
        Text(text, style: TextStyle(fontSize: 13)),
      ],
    );
  }

  Widget popularItem(String title, String subtitle, String price ,Color color ,Icon icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(9),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: color,
                  ),
                  child: icon,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 5),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
