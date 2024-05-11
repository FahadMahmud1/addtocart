import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffFAF9F6),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<Home> {
  int counter = 0;
  int counter2 = 0;
  int counter3 = 0;

  final int price1 = 43;
  final int price2 = 30;
  final int price3 = 51;

  MyAlertDialogue(context, String itemName) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Expanded(
                child: AlertDialog(
                  title: Center(
                    child: Text("Congratulations!"),
                  ),
                  content: Text("You have added 5 $itemName to your bag!"),
                  actions: [
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("OKAY"),
                      ),
                    ),
                  ],
                )),
          );
        });
  }

  MySnackBar(context, msg) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  int getTotalPrice() {
    return (counter * price1) + (counter2 * price2) + (counter3 * price3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
                onTap: (){},
                child: Icon(Icons.search)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                "My Bag",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),


            SizedBox(height: 12,),


            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                    child: Image.asset(
                      'assets/img1.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8,),
                        Text(
                          "PullOver",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text('Color: Black '),
                            SizedBox(width: 12,),
                            Text('Size: L '),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              elevation: 5,
                              onPressed: () {
                                if (counter > 0) counter--;
                                setState(() {});
                              },
                              child: Icon(Icons.remove),
                              mini: true,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                width: 25,
                                alignment: Alignment.center,
                                child: Text(
                                  (counter).toString(),
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            FloatingActionButton(
                              elevation: 5,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              onPressed: () {
                                counter++;
                                if (counter == 5) {
                                  MyAlertDialogue(context, "PullOver");
                                }
                                setState(() {});
                              },
                              mini: true,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.more_vert_rounded),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Text("${counter * price1} \$", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                    child: Image.asset(
                      'assets/img2.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8,),
                        Text(
                          "T-Shirt",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text('Color: Gray '),
                            SizedBox(width: 12,),
                            Text('Size: M '),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              elevation: 5,
                              onPressed: () {
                                if (counter2 > 0) counter2--;
                                setState(() {});
                              },
                              child: Icon(Icons.remove),
                              mini: true,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                width: 25,
                                alignment: Alignment.center,
                                child: Text(
                                  (counter2).toString(),
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            FloatingActionButton(
                              elevation: 5,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              onPressed: () {
                                counter2++;
                                if (counter2 == 5) {
                                  MyAlertDialogue(context, "T-Shirt");
                                }
                                setState(() {});
                              },
                              mini: true,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.more_vert_rounded),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Text("${counter2 * price2} \$", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                    child: Image.asset(
                      'assets/img3.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8,),
                        Text(
                          "Sport Dress",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text('Color: Black '),
                            SizedBox(width: 12,),
                            Text('Size: XL '),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              elevation: 5,
                              onPressed: () {
                                if (counter3 > 0) counter3--;
                                setState(() {});
                              },
                              child: Icon(Icons.remove),
                              mini: true,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                width: 25,
                                alignment: Alignment.center,
                                child: Text(
                                  (counter3).toString(),
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            FloatingActionButton(
                              elevation: 5,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              onPressed: () {
                                counter3++;
                                if (counter3 == 5) {
                                  MyAlertDialogue(context, "Sport Dress");
                                }
                                setState(() {});
                              },
                              mini: true,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.more_vert_rounded),
                        onPressed: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Text("${counter3 * price3} \$", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 85,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Text("Total Amount:"),

                  Text("${getTotalPrice()} \$",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 22),),


                ],
              ),
            ),

            SizedBox(height: 12,),



            Center(
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.4,vertical: 15),

                ),

                onPressed: (){

                  MySnackBar(context, "Congratulations! Successfully Added");

                }, child: Text("CHECK OUT"),

              ),
            ),

            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
