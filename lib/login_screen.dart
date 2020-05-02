import 'package:ecommerce_flutter/Animation/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:LoginScreen()
  ));
}

class LoginScreen extends StatefulWidget{
  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body:Container(
        child: Column(
          children: <Widget>[
            Container(
              height:300,
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/bg_img.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children:<Widget>[
                Positioned(
           left: 30,
           width: 40,
           height: 60,
           top: 60,
           child: 
           Container(
             child: Column(
               children: <Widget>[
                 Image.asset("assets/cart.png",
                   color: Colors.white,
                 )
               ],
             ),
           ),
           ),
            Positioned(
           left: 160,
           width: 40,
           height: 60,
           top: 110,
           child:
           Container(
             child: Column(
               children: <Widget>[
                 Image.asset("assets/bell.png",
                   color: Colors.white,
                 )
               ],
             ),
           ),
           ),
            Positioned(
           right: 50,
           width: 40,
           height: 60,
           top: 60,
           child:
           Container(
             child: Column(
               children: <Widget>[
                 Image.asset("assets/alarm_clock.png",
                   color: Colors.white,
                 )
               ],
             ),
           ),
           ),
           Positioned(
             child:
             Container(
               margin: EdgeInsets.only(top:100),
               child: Center(
                 child: Text("Login",style: new TextStyle(
                   color:Colors.white,
                   fontSize: 30,
                   fontWeight:FontWeight.bold,
                 ),
                 ),
                 ),
             ),
             ),
        ],
       ),
      ),
      Padding(padding: EdgeInsets.all(8.0),
        child: Column(
        children:<Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple[100],
                  blurRadius: 20.0,
                  offset: Offset(0,10),
                ),
              ],
            ),
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children:<Widget>[
                Container(
                  padding:  EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[100])),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                      color: Colors.grey[400]),
                    ),
                  ),
                ),
                Container(
                  padding:  EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[100])),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.grey[400]),
                    ),
                  ),
                )
              ]
            ),
          ),
          SizedBox(
            height:10,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: <Color>[
                   Colors.deepPurple[500],
                Colors.deepPurple[300],
                ],
              )
            ),
            child: Center(
              child: Text("Login",style: TextStyle(color:Colors.white,
              fontSize: 15.0,fontWeight:FontWeight.bold),)
            ),
          ),
          SizedBox(
            height:10.0,
          ),
          Text("ForgotPassword?",style: TextStyle(color:Colors.deepPurple[500],
              fontSize: 15.0,
              decoration: TextDecoration.underline),
          ),
//          SizedBox(
//            height:5.0,
//          ),
//          Text("New User?",style: TextStyle(color:Colors.deepPurple[500],
//              fontSize: 15.0,
//              decoration: TextDecoration.underline),
//          ),
          SizedBox(
            height:10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "assets/google_logo.svg",
                height:22.0,
                color: Colors.deepPurple,
              ),
              SizedBox(
                width:20.0,
              ),
              SvgPicture.asset(
                "assets/apple_logo.svg",
                height:25.0,
                color: Colors.deepPurple,
                 ),
               ],
              ),
             ]
            ),
           )
         ],
        )
      )
    );
  }
 
}