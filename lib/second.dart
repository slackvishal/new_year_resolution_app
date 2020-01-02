import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Second(),
    );
  }
}

class Second extends StatefulWidget {
  Second({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {

  bool _isChecked = true;

  List<String> _texts = [
    "Get in Shape",
    "Meet New people",
    "Reduce Stress",
    "Improve your concentration and mental skills",
    "Learn to be happier with your life",
    "Watch less TV"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Row(
              children: <Widget>[
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, color: Colors.white,)
                ),
                SizedBox(width: 50.0,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Personal", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        fontFamily: 'Nunito'
                      ),),
                      SizedBox(height: 5.0,),
                      Text("6 tasks", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        fontFamily: 'Nunito'
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _texts
                  .map((text) => CheckboxListTile(
                  activeColor: Colors.greenAccent,
                  title: Text(text, style: TextStyle(
                    color: Colors.greenAccent,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold
                  ),),
                  value: _isChecked,
                  onChanged: (val){
                    setState(() {
                      _isChecked = val;
                    });
                  },
                    ))
                  .toList(),
              ),
            ),
          )
        ],
      ),

    );
  }
}
