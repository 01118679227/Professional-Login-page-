import 'package:flutter/material.dart';
import 'package:login11_ui/customContainer.dart';
import 'package:login11_ui/customeappbar.dart';
class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return loginState();
  }
}
class loginState extends State<login>{
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: <Widget>[
        Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: ClipPath(
            clipper: CustomAppBar(),
            child: Container(
              color: Colors.blue.shade900,
              child: Center(
                child: Text('Welcome!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23.0,
                ),
                ),
              ),
            ),
            ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30.0,right: 30.0,bottom: 30.0),
          child: ClipPath(
            clipper: CustomContainer(),
                      child: Container(
              height: MediaQuery.of(context).size.height * .63,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0),topRight: Radius.circular(17.0),),
              ),
            child: ListView(
              children: <Widget>[
                Container(
              height: MediaQuery.of(context).size.height * 1.2,
                child: Column(
                children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(icon: Icon(Icons.home,size: 30.0,color: Colors.grey.shade800,), onPressed: (){}),
                 ),
                ),
                SizedBox(height: 30.0,),
                Center(
                child: Column(
                  children: <Widget>[
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
                    SizedBox(height: 29.0,),

                      //## The TextField of Mobil Number ##

                          Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * .7,
                              height: 45.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child:  Stack(
                                      children: <Widget>[
                                        Center(
                                        child: TextField(
                                          textAlign: TextAlign.center,
                                          controller: null,
                                          decoration: InputDecoration(
                                            hintText: 'Mobil Number',
                                            hintStyle: TextStyle(
                                              fontSize: 14.0
                                            ),
                                            border: InputBorder.none,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(50.0),
                                            ),
                                          ),
                                        )
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left:18.0),
                                          child: Image.asset('image/cellphone-line.png',height: 20.0,width: 20.0,),
                                        ),
                                       ),
                                      ],
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
                                        width: MediaQuery.of(context).size.width * .7,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: BorderRadius.circular(50.0),
                                        ),
                                        child: Stack(
                                          children: <Widget>[
                                          Center(
                                          child: Text('FaceBook',
                                          style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15.0,
                                                 ),
                                         ),
                                        ),
                                        Padding(
                                           padding: const EdgeInsets.only(left:18.0,top: 14.0),
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
                                        width: MediaQuery.of(context).size.width * .7,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: BorderRadius.circular(50.0),
                                        ),
                                        child: Stack(
                                          children: <Widget>[
                                          Center(
                                          child: Text('Google',
                                          style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15.0,
                                                 ),
                                         ),
                                        ),
                                        Padding(
                                           padding: const EdgeInsets.only(left:18.0,top: 14.0),
                                               child: Image.asset('image/google-fill.png',height: 20.0,width: 20.0,),
                                           ),
                                          ],
                                        )
                                      ),
                                    ),
                               ),

                                  SizedBox(height: 20.0,),

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
        ),
          
              ],
            ),
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
              child: Text('By continuing, you agree to terms & conditions',
        style: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 10.0
        ),
        ),
      ),
         SizedBox(height: 10.0,),
          ],
    );
  }
}