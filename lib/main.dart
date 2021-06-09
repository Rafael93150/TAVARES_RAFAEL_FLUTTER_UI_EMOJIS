import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100.0,

        title: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
        ),
        onPressed: () {
              // do something
            },
        ),
    
        actions: <Widget>[
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 50.0,
              height: 50.0,

              decoration: BoxDecoration(
                color: Colors.blue[100],
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/tuxedo.png'),
                  fit: BoxFit.contain,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              
            ),
          )

        ],
      ),

      body: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text("SEARCH FOR \nRECIPES", 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 30.0)
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, right: 20.0),
                child: CupertinoSearchTextField(
                  padding: const EdgeInsets.all(16.0)
                ),
              ),
              Text("Recommended", 
              style: TextStyle(
                fontSize: 20.0)
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 200.0,

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[



                    Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      width: 165.0,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            margin: const EdgeInsets.only(top: 30.0, bottom: 25.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('images/burger.png'),
                                scale: 3.0
                              ),
                            ),
                          ),
                          Text('Hamburg\n\$21', 
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 18.0, 
                              color: Colors.orangeAccent[400]
                            )
                          )
                        ],
                      )
                    ),



                    Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      width: 165.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            margin: const EdgeInsets.only(top: 30.0, bottom: 25.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('images/fries.png'),
                                scale: 3.0
                              ),
                            ),
                            
                          ),
                          Text('Chips\n\$15', 
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 18.0, 
                              color: Colors.indigo[800]
                            )
                          )
                        ],
                      )
                    ),



                    Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      width: 165.0,
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            margin: const EdgeInsets.only(top: 30.0, bottom: 25.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('images/pizza.png'),
                                scale: 3.0
                              ),
                            ),
                            
                          ),
                          Text('Pizza\n\$25', 
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 18.0, 
                              color: Colors.teal[800]
                            )
                          )
                        ],
                      )
                    ),

                  ],
                ), 
              ),


              // 2eme Liste

              Container(
                height: 30.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0, left: 15.0),
                      child: Text("FEATURED",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 18.0)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0, top:5.0),
                      child: Text("COMBO", 
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0, top:5.0),
                      child: Text("FAVORITES", 
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0, top:5.0),
                      child: Text("RECOMPENSE", 
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0)
                      ),
                    ),
                  ]
                )
              ),


              // 3eme Liste

              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 300.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.pink[50],
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              image: AssetImage('images/hotdog.png'),
                              scale: 3.0
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Delicious hot dog",
                              style: TextStyle(
                                fontSize: 16.0
                              ),), 
                              Row(children: [Icon(Icons.star, color: Colors.yellow[600], size: 20.0), Icon(Icons.star, color: Colors.yellow[600], size: 20.0),Icon(Icons.star, color: Colors.yellow[600], size: 20.0),Icon(Icons.star, color: Colors.yellow[600], size: 20.0)]),
                              Row(children: [
                                Text("\$6", style: TextStyle(
                                  color: Colors.pink[200],
                                  fontWeight: FontWeight.bold, 
                                  fontSize: 18.0)
                                ), 
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text("\$18", 
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold, 
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 13.0)
                                  ),
                                )
                              ])
                              
                            ],
                          ),
                        )
                      ],
                    ),



                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.purple[50],
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage('images/popcorn.png'),
                                scale: 3.0
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left:25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Caramelized popcorns",
                                style: TextStyle(
                                  fontSize: 16.0
                                ),), 
                                Row(children: [Icon(Icons.star, color: Colors.yellow[600], size: 20.0),Icon(Icons.star, color: Colors.yellow[600], size: 20.0),Icon(Icons.star, color: Colors.yellow[600], size: 20.0)]),
                                Row(children: [
                                  Text("\$8", style: TextStyle(
                                    color: Colors.purple[200],
                                    fontWeight: FontWeight.bold, 
                                    fontSize: 18.0)
                                  ), 
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text("\$20", 
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                        fontWeight: FontWeight.bold, 
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 13.0)
                                    ),
                                  )
                                ])
                                
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ]
                )
              )

            ],
          
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[300],
        elevation: 10.0,
        mini: true,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
