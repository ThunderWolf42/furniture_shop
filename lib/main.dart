import 'package:flutter/material.dart';


void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});
  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
      int _selectedIndex = 0;
      void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 176, 106, 231),
              Color.fromARGB(255, 166, 112, 232),
              Color.fromARGB(255, 131, 123, 232),
              Color.fromARGB(255, 104, 132, 231),
            ])),
          ),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          title: const Center(
            //navigatorKey: Get.navigatorKey,
            child: Text("Home"),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ]),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 176, 106, 231),
          Color.fromARGB(255, 166, 112, 232),
          Color.fromARGB(255, 131, 123, 232),
          Color.fromARGB(255, 104, 132, 231),
        ])),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 0, right: 120, top: 20),
              child: SizedBox(
                width: 226,
                child: Text(
                  'Discover the most Modern Furniture',
                  style: TextStyle(
                      color: Color(0xFF494442),
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1,
                      letterSpacing: 1),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 10, right: 50, top: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 70,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF63E4E4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "All",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 170,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF63E4E4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Living Room",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 130,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF63E4E4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Bedroom",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 180,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF63E4E4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Dining Room",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.all(10),
                        width: 100,
                        height: 30,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF63E4E4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          "Kitchen",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25),
                        )),
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 0, right: 150, top: 20),
              child: Text(
                'Recommended Furnitures',
                style: TextStyle(
                    color: Color(0xFF494442),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1,
                    letterSpacing: 1),
              ),
            ),
            Expanded(
                child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 30,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                    width: 185,
                    height: 243,
                    padding: const EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                        color: Colors.purple[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/adrik27/Landing-Page-Furniture/blob/main/furniture/img/chairs/1.png?raw=true"),
                          
                        ),
                      ),
                      child: IconButton(
                        alignment: Alignment.topLeft,
                        onPressed: () {},
                        hoverColor: Colors.orange.withOpacity(0.3),
                        icon: const Icon(
                          Icons.favorite,
                          size: 34.0,
                        ),
                      ),
                      
                    ),
                  ),

                  Container(
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                      color: Colors.purple[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/adrik27/Landing-Page-Furniture/blob/main/furniture/img/chairs/1.png?raw=true"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: IconButton(
                        alignment: Alignment.topLeft,
                        onPressed: () {},
                        hoverColor: Colors.orange.withOpacity(0.3),
                        icon: const Icon(
                          Icons.favorite,
                          size: 34.0,
                        ),
                      ),
                    //child: const Text("Rp 30.000")
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                      color: Colors.purple[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/adrik27/Landing-Page-Furniture/blob/main/furniture/img/chairs/11.png?raw=true"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: IconButton(
                        alignment: Alignment.topLeft,
                        onPressed: () {},
                        hoverColor: Colors.orange.withOpacity(0.3),
                        icon: const Icon(
                          Icons.favorite,
                          size: 34.0,
                        ),
                      ),
                    //child: const Text("Rp 30.000")
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                      color: Colors.purple[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/adrik27/Landing-Page-Furniture/blob/main/furniture/img/chairs/11.png?raw=true"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: IconButton(
                        alignment: Alignment.topLeft,
                        onPressed: () {},
                        hoverColor: Colors.orange.withOpacity(0.3),
                        icon: const Icon(
                          Icons.favorite,
                          size: 34.0,
                        ),
                      ),
                    //child: const Text("Rp 30.000")
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                      color: Colors.purple[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.photoroom.com/_next/image?url=https%3A%2F%2Fa.storyblok.com%2Ff%2F191576%2F768x768%2F69a0841fbe%2Fmarketplace-a1.png&w=3840&q=75"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: IconButton(
                        alignment: Alignment.topLeft,
                        onPressed: () {},
                        hoverColor: Colors.orange.withOpacity(0.3),
                        icon: const Icon(
                          Icons.favorite,
                          size: 34.0,
                        ),
                      ),
                    //child: const Text("Rp 30.000")
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                      color: Colors.purple[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/adrik27/Landing-Page-Furniture/blob/main/furniture/img/produk/best-seller1.jpg?raw=true"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: IconButton(
                        alignment: Alignment.topLeft,
                        onPressed: () {},
                        hoverColor: Colors.orange.withOpacity(0.3),
                        icon: const Icon(
                          Icons.favorite,
                          size: 34.0,
                        ),
                      ),
                    //child: const Text("Rp 30.000")
                  ),
                ),
              ],
             )
            )
          ],
        ),
      ),
      


      /*bottomNavigationBar: const GNav(
          padding: EdgeInsets.all(15),
          backgroundColor:
              Colors.purple, // tab button ripple color when pressed
          color: Colors.white,
          activeColor: Colors.white,
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.add_shopping_cart,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.star_border,
              text: 'Star',
            ),
            GButton(
              icon: Icons.person,
              text: 'Account',
            )
          ]),*/

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 20,
        selectedItemColor: Colors.purple[600],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trolley),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Star',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person')
        ],
      ),
    );
  }
}
