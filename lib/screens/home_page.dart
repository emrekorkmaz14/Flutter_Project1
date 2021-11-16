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
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.blueGrey.shade900,
            ),
            centerTitle: true,
            title: Text(
              'urBasics',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey.shade900,
              ),
            ),
            backgroundColor: Colors.blueGrey.shade200,
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: TextField(
                            cursorColor: Colors.blueGrey,
                            showCursor: true,
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueGrey)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueGrey)),
                              hintText: "Search",
                              icon: Icon(Icons.search, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50),
                            child: Text(
                              'Categories',
                              style: TextStyle(
                                  color: Colors.blueGrey.shade700,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 40),
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_right,
                                color: Colors.redAccent,
                              ),
                              label: Text(
                                'view all',
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                                color: Colors.white,
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
                                        color: Colors.white,
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
                                color: Colors.white,
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
                                        color: Colors.white,
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
                                  color: Colors.white,
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
                                          color: Colors.white,
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
                                  color: Colors.white,
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
                                          color: Colors.white,
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
            color: Colors.blueGrey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.blueGrey.shade900,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.blueGrey.shade900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
