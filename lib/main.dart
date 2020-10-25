import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Lppage(),
    );
  }
}

class Lppage extends StatefulWidget{
  @override
  _LpState createState() => _LpState();
}

class _LpState extends State<Lppage>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

        resizeToAvoidBottomPadding: false,
        body: Container(
          padding: EdgeInsets.only(top: 100, right: 25.0, left: 25.0, bottom: 20.0),
            child: Column(
               children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 0, right: 5.0, left: 0.0, bottom: 20.0),
               child:  Text("Welcome Back" ,style:TextStyle(color:Colors.black ,fontSize: 40, fontWeight: FontWeight.bold),),
            ),
                 SizedBox(height: 100),
                 buildTextField("Phone Number"),
                 SizedBox(height: 20.0,),
                 buildTextField("Password"),
                 SizedBox(height: 20.0,),
                 Container(
                   padding: EdgeInsets.only(top: 0, right: 0, left: 180.0, bottom: 20.0),
                   child:  Text("Forget Password" ,style:TextStyle(color:Colors.black ,fontSize: 15,
                   fontStyle: FontStyle.italic),),
                 ),
                 SizedBox(height: 100.0,),
                 Container(
                     decoration: BoxDecoration(
                       border: Border.all(
                           color:Colors.black,
                           style: BorderStyle.solid,
                           width: 2.0
                       ),
                       color: Colors.black,
                       borderRadius: BorderRadius.circular(100),

                     ),
                     child: Center(
                       child: Text("LET'S  GO",
                         style: TextStyle(
                           color: Colors.white,
                             fontSize: 30,
                             fontWeight: FontWeight.bold

                         ),
                       ),
                     )

                 ),



               ],
            ),

        )
    );
  }
  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 10.0,
        ),


        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ) :null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }



}


