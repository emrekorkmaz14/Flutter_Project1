import 'package:flutter/material.dart';
import 'package:shopapp/widgets/drawer.dart';

class HomePge extends StatefulWidget {
  HomePge();
  @override
  _HomePgeState createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blueGrey.shade200,
          ),
          centerTitle: true,
          title: Text(
            'urBasics',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.amber.shade800,
            ),
          ),
          backgroundColor: Color(0xff293559),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
              ),
            ),
          ],
        ),
        drawer: DrawerHome(),
        body: Scaffold(
          backgroundColor: Color(0xffFFFFFF),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                  height:70,                
                  child: TextField(
                    cursorColor: Color(0xff293559),
                    style: TextStyle(color: Color(0xff293559),),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),    
                    ),
                      focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                    ),
                      hintText: "Search", hintStyle: TextStyle(color: Color(0xff293559),),    
                      suffixIcon: Icon(Icons.search,color: Color(0xff293559),)
                              
                    ),
                    
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                                color: Colors.blueGrey.shade700,
                                fontSize: 17,
                                fontWeight: FontWeight.w800),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_right,
                              color: Colors.amber.shade800,
                            ),
                            label: Text(
                              'view all',
                              style: TextStyle(
                                color: Colors.amber.shade800,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/hmgoepprod.png'),
                                  fit: BoxFit.cover),
                              color: Colors.blueGrey.shade200,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 3))
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'T-Shirt',
                                  style: TextStyle(
                                      color: Colors.amber.shade800,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          onTap: () => print('tıklandı'),
                        ),
                        GestureDetector(
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/hmgoepprodt.png'),
                                  fit: BoxFit.cover),
                              color: Colors.blueGrey.shade200,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(0, 3))
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Trousers',
                                  style: TextStyle(
                                      color: Colors.amber.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          onTap: () => print('tıklandı'),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: ExactAssetImage(
                                        'assets/images/hmgoepprodh.png'),
                                    fit: BoxFit.cover),

                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: Offset(0, 3))
                                ],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Hoodies',
                                    style: TextStyle(
                                        color: Colors.amber.shade700,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () => print('tıklandı'),
                          ),
                          GestureDetector(
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: ExactAssetImage(
                                        'assets/images/hmgoepprodj.png'),
                                    fit: BoxFit.cover),
                                color: Colors.blueGrey.shade200,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: Offset(0, 3))
                                ],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Jackets-Coats',
                                    style: TextStyle(
                                        color: Colors.amber.shade700,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () => print('tıklandı'),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xff293559),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.blueGrey.shade200,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.blueGrey.shade200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
