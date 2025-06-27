import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 40.0, right: 40, top: 40),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 67, 255, 151),
            const Color.fromARGB(255, 11, 164, 75)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Column(
            children: [
              // upper
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // left part
                    Row(
                      children: [
                        Icon(CupertinoIcons.home,
                            size: 24, color: Colors.white),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Home",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text("Some address long ",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 12)),
                                Icon(
                                  Icons.arrow_downward,
                                  size: 10,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // right part
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              // color: const Color.fromARGB(255, 21, 20, 19),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: Icon(CupertinoIcons.bell,
                                    size: 15, color: Colors.black),
                              ),
                            ),
                            Positioned(
                              top: 1,
                              right: 1,
                              child: CircleAvatar(
                                backgroundColor: Colors.redAccent,
                                radius: 8,
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Icon(CupertinoIcons.cart,
                              size: 15, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              // lower
              // Search bar
              SizedBox(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                    ),
                    
                    suffixIcon: SizedBox(width: 50,
                    child: Row(
                      children: [
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.black,
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.tune, size: 25, color: Colors.black,)
                      ],
                    )),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
