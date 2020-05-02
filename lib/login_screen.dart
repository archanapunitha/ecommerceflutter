import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn googleSignIn=GoogleSignIn(
  scopes: [
    "profile",
    "email"
  ]
);

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
  GoogleSignInAccount currentUser;
  @override
  void initState() {
    super.initState();
    googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account){
      setState(() {
        currentUser=account;
      });
    });
    googleSignIn.signInSilently();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body:
      Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height:250,
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
             width: 30,
             height: 50,
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
             width: 30,
             height: 50,
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
             width: 30,
             height: 50,
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
                     fontSize: 25,
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
                      obscureText: true,
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
              height:20,
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
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/Icons/google_logo.svg",
                    height:25.0,
                    color: Colors.deepPurple,
                  ),
                  onPressed: (){
                    buildbody();
                  },
                ),

                SizedBox(
                  width:5.0,
                ),
                IconButton(
                  icon:  SvgPicture.asset(
                    "assets/Icons/fb_logo.svg",
                    height:25.0,
                    color: Colors.deepPurple,
                    ),
                  onPressed: (){

                  },
                   )
                  ],
                ),
               ]
              ),
             )
           ],
          ),
        )
      )
    );
  }

  Widget buildbody() {
    if(currentUser!=null){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ListTile(
            leading: GoogleUserCircleAvatar(identity: currentUser),
            title: Text(currentUser.displayName ?? ""),
            subtitle: Text(currentUser.email ?? ""),
          ),
          RaisedButton(onPressed: handleSignOut,
            child: Text("SIGN OUT"),
          )
        ],
      );
    }
    else{
      return Column(
        children: <Widget>[
          Text("You Are Not Signed In..."),
          RaisedButton(onPressed: handleSignIn,
            child: Text("SIGN IN"),
          )
        ],
      );
    }
  }
 

  Future<void> handleSignOut() {
    googleSignIn.disconnect();
  }

  Future<void> handleSignIn() async {
    try{
      await googleSignIn.signIn();
    }catch(error){
      print(error);
    }
  }
}