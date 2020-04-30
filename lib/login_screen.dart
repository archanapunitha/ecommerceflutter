import 'package:ecommerce_flutter/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
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
      body:Container(
        child: Column(
          children: <Widget>[
            Container(
              height:400,
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
           width: 50,
           height: 100,
           top: 40,
           child: FadeAnimation(1,
           Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage("assets/cart.png")
               )
             ),
           )),
           ),
            Positioned(
           left: 130,
           width: 80,
           height: 150,
           top: 30,
           child: FadeAnimation(1.3,
           Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage("assets/bell.png")
               )
             ),
           )),
           ),
            Positioned(
           right: 40,
           width: 80,
           height: 100,
           top: 20,
           child: FadeAnimation(1.5,
           Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage("assets/clock.png")
               )
             ),
           )),
           ),
           Positioned(
             child: FadeAnimation(1.6,
             Container(
               margin: EdgeInsets.only(top:50),
               child: Center(
                 child: Text("Login",style: new TextStyle(
                   color:Colors.white,
                   fontSize: 20,
                   fontWeight:FontWeight.bold,
                 ),
                 ),
                 ),
             )),
             ),
        ],
       ),
      ),
      Padding
       (
        padding: EdgeInsets.all(30.0),
        child: Column(
        children:<Widget>[
         FadeAnimation(1.7,
         Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple[100],
                  blurRadius: 20.0,
                  offset: Offset(0,10),
                )
              ]
            ),
            child: Column(
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
          )),
          SizedBox(
            height:30,
          ),
          FadeAnimation(2,
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                Colors.deepPurple[500],
                Colors.deepPurple[300],
              )
            ),
            child: Center(
              child: Text("Login",style: TextStyle(color:Colors.white,
              fontSize: 20.0,fontWeight:FontWeight.bold),)
            ),
          )),
          SizedBox(
            height:20.0,
          ),
          FadeAnimation(1.5,
          Text("ForgotPassword?",style: TextStyle(color:Colors.deepPurple[500],
              fontSize: 20.0,fontWeight:FontWeight.bold,
              decoration: TextDecoration.underline),)),
             ]
              ),
            )
            ],
        )
      )
    );
  }
 
}