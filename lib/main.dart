
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MonApplication());
}

class MonApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MiniApp(),
    );
  }
}

class MiniApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';
    //AppBar
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlueAccent,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/tuxedo.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              ),
              ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
      ),

      //Construction du body
      body: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      "SEARCH FOR  \nRECIPES",
                      style: TextStyle(
                        fontSize: 25.0,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                //Construction searchbar
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                      leading: Icon(Icons.search, size: 30.0, color: Colors.grey),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                  )
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Recommended",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 180.0,
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset("assets/burger.png"),
                                height: 100,
                                width: 100,
                                padding: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,

                                ),
                              ),
                              Text(
                                "Hamburg \n \$21",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.orangeAccent,
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180.0,

                          decoration: BoxDecoration(
                            color: Colors.lightBlue.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset("assets/fries.png"),
                              height: 100,
                              width: 100,
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              ),
                            ),
                            Text(
                              "Chips \n \$15",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180.0,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset("assets/sandwich.png"),
                              height: 100,
                              width: 100,
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Sandwich \n \$12",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 180.0,
                          decoration: BoxDecoration(
                            color: Colors.yellow.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset("assets/pizza.png"),
                                height: 100,
                                width: 100,
                                padding: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Pizza \n \$11",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                   children: [
                       Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: Text(
                             "FEATURED",
                             style: TextStyle(
                             fontSize: 17.0,
                             fontWeight: FontWeight.bold,
                         ),
                     ),
                       ),
                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Text(
                           "COMBO",
                           style: TextStyle(
                           fontSize: 12.0,
                             color: Colors.grey,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Text(
                         "FAVORITES",
                         style: TextStyle(
                           fontSize: 12.0,
                           color: Colors.grey,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Text(
                         "RECOMMENDED",
                         style: TextStyle(
                           fontSize: 12.0,
                           color: Colors.grey,
                         ),
                       ),
                     ),
                   ],
                ),
              ),
              SizedBox(height: 20),
             Container(
               height: 250,
               child: ListView(
                 shrinkWrap: true,
                 children: [
                   ListTile(
                     leading: Container(
                       height: 60,
                       width: 60,
                       child: Padding(
                         padding: const EdgeInsets.all(4.0),
                         child: Image.asset("assets/hotdog.png"),
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(12.0)),
                         color: Colors.pink[100],
                       ),
                     ),
                     title: Text(
                       "Delicious hot dog",
                     ),
                     subtitle: Column(
                       children: [
                         Row(
                           children: [
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                           ],
                         ),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text("\$6 ",
                               style: TextStyle(
                                 color: Colors.redAccent,
                                 fontSize: 18,
                               ),
                             ),
                             Text(" \$18",
                               style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 14,
                                 decoration: TextDecoration.lineThrough,
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                     trailing: Container(
                       width: 70,
                       height: 70,
                       child: Icon(Icons.add, size: 20.0, color: Colors.white),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.redAccent,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey,
                             offset: const Offset(
                               2.0,
                               2.0,
                             ),
                             blurRadius: 4.0,
                             spreadRadius: 2.0,
                           ), //BoxShadow
                           BoxShadow(
                             color: Colors.white,
                             offset: const Offset(0.0, 0.0),
                             blurRadius: 0.0,
                             spreadRadius: 0.0,
                           ), //BoxShadow
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: 10),
                   ListTile(
                     leading: Container(
                       height: 60,
                       width: 60,
                       child: Padding(
                         padding: const EdgeInsets.all(4.0),
                         child: Image.asset("assets/popcorn.png"),
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(12.0)),
                         color: Colors.pink[100],

                       ),
                     ),
                     title: Text(
                       "Delicious popcorn",
                     ),
                     subtitle: Column(
                       children: [
                         Row(
                           children: [
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                           ],
                         ),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text("\$4 ",
                               style: TextStyle(
                                 color: Colors.redAccent,
                                 fontSize: 18,
                               ),
                             ),
                             Text(" \$7.50",
                               style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 14,
                                 decoration: TextDecoration.lineThrough,
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                     trailing: Container(
                       width: 70,
                       height: 70,
                       child: Icon(Icons.add, size: 20.0, color: Colors.white),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.redAccent,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey,
                             offset: const Offset(
                               2.0,
                               2.0,
                             ),
                             blurRadius: 4.0,
                             spreadRadius: 2.0,
                           ), //BoxShadow
                           BoxShadow(
                             color: Colors.white,
                             offset: const Offset(0.0, 0.0),
                             blurRadius: 0.0,
                             spreadRadius: 0.0,
                           ), //BoxShadow
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: 10),
                   ListTile(
                     leading: Container(
                       height: 60,
                       width: 60,
                       child: Padding(
                         padding: const EdgeInsets.all(4.0),
                         child: Image.asset("assets/doughnut.png"),
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(12.0)),
                         color: Colors.pink[100],
                       ),
                     ),
                     title: Text(
                       "Delicious doughnut",
                     ),
                     subtitle: Column(
                       children: [
                         Row(
                           children: [
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                           ],
                         ),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text("\$6 ",
                               style: TextStyle(
                                 color: Colors.redAccent,
                                 fontSize: 18,
                               ),
                             ),
                             Text(" \$15",
                               style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 14,
                                 decoration: TextDecoration.lineThrough,
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                     trailing: Container(
                       width: 70,
                       height: 70,
                       child: Icon(Icons.add, size: 20.0, color: Colors.white),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.redAccent,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey,
                             offset: const Offset(
                               2.0,
                               2.0,
                             ),
                             blurRadius: 4.0,
                             spreadRadius: 2.0,
                           ), //BoxShadow
                           BoxShadow(
                             color: Colors.white,
                             offset: const Offset(0.0, 0.0),
                             blurRadius: 0.0,
                             spreadRadius: 0.0,
                           ), //BoxShadow
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: 10),
                   ListTile(
                     leading: Container(
                       height: 60,
                       width: 60,
                       child: Padding(
                         padding: const EdgeInsets.all(4.0),
                         child: Image.asset("assets/cheese.png"),
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(12.0)),
                         color: Colors.pink[100],
                       ),
                     ),
                     title: Text(
                       "Delicious cheese",
                     ),
                     subtitle: Column(
                       children: [
                         Row(
                           children: [
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                           ],
                         ),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text("\$6 ",
                               style: TextStyle(
                                 color: Colors.redAccent,
                                 fontSize: 18,
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                     trailing: Container(
                       width: 70,
                       height: 70,
                       child: Icon(Icons.add, size: 20.0, color: Colors.white),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.redAccent,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey,
                             offset: const Offset(
                               2.0,
                               2.0,
                             ),
                             blurRadius: 4.0,
                             spreadRadius: 2.0,
                           ), //BoxShadow
                           BoxShadow(
                             color: Colors.white,
                             offset: const Offset(0.0, 0.0),
                             blurRadius: 0.0,
                             spreadRadius: 0.0,
                           ), //BoxShadow
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: 10),
                   ListTile(
                     leading: Container(
                       height: 60,
                       width: 60,
                       child: Padding(
                         padding: const EdgeInsets.all(4.0),
                         child: Image.asset("assets/taco.png"),
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(12.0)),
                         color: Colors.pink[100],
                       ),
                     ),
                     title: Text(
                       "Delicious taco",
                     ),
                     subtitle: Column(
                       children: [
                         Row(
                           children: [
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                             Icon(Icons.star, size: 20.0, color: Colors.yellow),
                           ],
                         ),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text("\$20",
                               style: TextStyle(
                                 color: Colors.redAccent,
                                 fontSize: 18,
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                     trailing: Container(
                       width: 70,
                       height: 70,
                       child: Icon(Icons.add, size: 20.0, color: Colors.white),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.redAccent,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey,
                             offset: const Offset(
                               2.0,
                               2.0,
                             ),
                             blurRadius: 4.0,
                             spreadRadius: 2.0,
                           ), //BoxShadow
                           BoxShadow(
                             color: Colors.white,
                             offset: const Offset(0.0, 0.0),
                             blurRadius: 0.0,
                             spreadRadius: 0.0,
                           ), //BoxShadow
                         ],
                       ),
                     ),
                   ),
                 ],
                ),
             ),
            ],
          ),
      ),
    );
  }
}

