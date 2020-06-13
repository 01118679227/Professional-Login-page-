import 'package:flutter/material.dart';
import 'package:login11_ui/customeappbar.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
    child: Stack(
          children: <Widget>[
          
     Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
     color: Colors.grey.shade200,
         child: Column(
           children: <Widget>[
             Container(
              width: MediaQuery.of(context).size.width * .86,
              height: MediaQuery.of(context).size.height * .95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  
                ],
              ),
              ),
           ],
         ),
      ),
       ClipPath(
         clipper: CustomAppBar(),
         child: Container(
         width: MediaQuery.of(context).size.width,
         height:300.0,
         color: Colors.grey.shade200,
    ),
       ),
        ClipPath(
         clipper: CustomAppBar(),
         child: Container(
         width: MediaQuery.of(context).size.width,
         height:260.0,
         color: Colors.blue.shade900,
         child: Center(
           child: Padding(
             padding: const EdgeInsets.only(bottom: 40.0),
             child: Text('Welcome!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
             ),
           ),
         ),
    ),
       ),
       ListView(
         children: <Widget>[
           Container(
           child: Column(
             children: <Widget>[
               Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(right: 50.0,top: 190.0),
                   child: IconButton(icon: Icon(Icons.home,size: 40.0,color: Colors.grey.shade900,), onPressed: (){}),
                 ),
                 
               ],
               ),
               SizedBox(height: 70.0,),
               Text('Login using social media to get',
              style: TextStyle(
                color: Colors.grey.shade600
              ),
              ),
              SizedBox(height: 6.0,),
               Text('quick access',
                style: TextStyle(
                color: Colors.grey.shade600
              ),
              ),
              SizedBox(height: 40.0,),
               //## The Mobil Number ##
                          Padding(
                            padding: const EdgeInsets.only(left:18.0),
                            child: GestureDetector(
                                onTap: (){},
                                  child: Container(
                                  width: MediaQuery.of(context).size.width * .6,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1.0,color: Colors.grey.shade300),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                    Center(
                                    child: Text('Mobil Number',
                                    style: TextStyle(
                                            color: Colors.grey.shade900,
                                            fontSize: 15.0,
                                           ),
                                   ),
                                  ),
                                  Padding(
                                     padding: const EdgeInsets.only(left:18.0,top: 8.0),
                                         child: Image.asset('image/cellphone-line.png',height: 20.0,width: 20.0,),
                                     ),
                                    ],
                                  )
                                ),
                              ),
                          ),

                           SizedBox(height: 20.0,),
                           //## The Facebook Button ##
                          Padding(
                            padding: const EdgeInsets.only(left:18.0),
                            child: GestureDetector(
                                onTap: (){},
                                  child: Container(
                                  width: MediaQuery.of(context).size.width * .6,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1.0,color: Colors.grey.shade300),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                    Center(
                                    child: Text('FaceBook',
                                    style: TextStyle(
                                            color: Colors.grey.shade900,
                                            fontSize: 15.0,
                                           ),
                                   ),
                                  ),
                                  Padding(
                                     padding: const EdgeInsets.only(left:18.0,top: 8.0),
                                         child: Image.asset('image/facebook-fill.png',height: 20.0,width: 20.0,),
                                     ),
                                    ],
                                  )
                                ),
                              ),
                          ),

                             SizedBox(height: 20.0,),
                              //## The Google Button ##
                         Padding(
                           padding: const EdgeInsets.only(left:18.0),
                           child: GestureDetector(
                                onTap: (){},
                                  child: Container(
                                  width: MediaQuery.of(context).size.width * .6,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1.0,color: Colors.grey.shade300),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                    Center(
                                    child: Text('Google',
                                    style: TextStyle(
                                            color: Colors.grey.shade900,
                                            fontSize: 15.0,
                                           ),
                                   ),
                                  ),
                                  Padding(
                                     padding: const EdgeInsets.only(left:18.0,top: 8.0),
                                         child: Image.asset('image/google-fill.png',height: 20.0,width: 20.0,),
                                     ),
                                    ],
                                  )
                                ),
                              ),
                         ),

                            SizedBox(height: 10.0,),

                          //## The Skip Button ##
                          FlatButton(
                            child: Text('Skip',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 15.0
                            ),
                            ),
                            onPressed: (){},
                            ), 
                            SizedBox(height: 20.0,),

             ],
           ),
       ),
         ],
       ),
       Align(
         alignment: Alignment.bottomCenter,
           child: Text('By continuing, you agree to terms & conditions',
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 13.0
          ),
          ),
       ),
       SizedBox(height: 12.0,),
        ],
      ),
    );
  }
}