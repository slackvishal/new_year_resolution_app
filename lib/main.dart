import 'package:flutter/material.dart';
import 'package:new_year_app/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyMainPage(),
    );
  }
}

class MyMainPage extends StatefulWidget {
  MyMainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Icon(Icons.menu, color: Colors.white,),
            backgroundColor: Colors.purple[200],
            title: Text("Happy New Year", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito'
            ),),
            expandedHeight: 350.0,
            pinned: true,
            floating: true,
            snap: true,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 100.0, bottom: 20.0),
              child: Text("Hey, your New Year's resolution list is waiting for you", style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
                fontFamily: 'Nunito',
                fontSize: 40.0,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("My lists", style: TextStyle(
                        color: Colors.red[300],
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0
                      ),),
                      SizedBox(height: 20.0,),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 150.0,
                              width: 130.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Icon(Icons.add, color: Colors.red[300], size: 100.0,),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Second()),
                              );
                            },
                            child: Container(
                              height: 150.0,
                              width: 130.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          backgroundColor: Colors.greenAccent,
                                          radius: 5.0,
                                        ),
                                        SizedBox(width: 5.0,),
                                        Text("Personal", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0
                                        ),)
                                      ],
                                    ),
                                    SizedBox(height: 10.0,),
                                    Text("My New me", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(height: 10.0,),
                                    Text("6 tasks", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 150.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundColor: Colors.greenAccent,
                                        radius: 5.0,
                                      ),
                                      SizedBox(width: 5.0,),
                                      Text("Personal", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("My New me", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 10.0,),
                                  Text("6 tasks", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 150.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundColor: Colors.greenAccent,
                                        radius: 5.0,
                                      ),
                                      SizedBox(width: 5.0,),
                                      Text("Personal", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("My New me", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 10.0,),
                                  Text("6 tasks", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 150.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundColor: Colors.greenAccent,
                                        radius: 5.0,
                                      ),
                                      SizedBox(width: 5.0,),
                                      Text("Personal", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("My New me", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 10.0,),
                                  Text("6 tasks", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 150.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundColor: Colors.greenAccent,
                                        radius: 5.0,
                                      ),
                                      SizedBox(width: 5.0,),
                                      Text("Personal", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("My New me", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 10.0,),
                                  Text("6 tasks", style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50.0,),
                    ],
                  ),
                )
              ]))

        ],
      ),

    );
  }
}
