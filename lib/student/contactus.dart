import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/mainPages/homePage.dart';
import 'package:student/mainPages/studentORamin.dart';
import 'package:url_launcher/url_launcher.dart';

import '../logANDreg/loginFORcaht.dart';
import '../test.dart';

class contactUs extends StatelessWidget {
  const contactUs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/k1.jpg')
                      ,fit: BoxFit.cover
                      ,opacity: 100
                  )
                  ,borderRadius: BorderRadius.circular(0.5)
              ),
              margin: EdgeInsets.only(bottom:40,top: 20),
            ),
            Text('We`re here to help you,')
            ,Text('If you have any question you can contact us')
            ,Text('Using...')
            ,Container(
              margin: EdgeInsets.only(top: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      launch('https://www.facebook.com/profile.php?id=100064103772320');
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(20.5)
                      ),
                      height: 95,
                      width: 95,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.facebook,color: Colors.blue,size: 30,),
                          )
                          ,Container(
                            child:Text('Facebook',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                          )
                        ],
                      ),
                    ),
                  )
                  ,SizedBox(
                    width: 30,
                  )
                  ,GestureDetector(
                    onTap: (){
                      FlutterPhoneDirectCaller.callNumber('01019291595');
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 95,
                      width: 95,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(20.5)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.call,color: Colors.black54,size: 30,),
                          )
                          ,Container(
                            child:Text('Call',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                          )
                        ],
                      ),
                    ),
                  )
                  ,SizedBox(
                    width: 30,
                  )
                  ,GestureDetector(
                    onTap: (){
                      Get.to(chatLogin());
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 95,
                      width: 95,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(20.5)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.chat_outlined,color: Colors.purple,size: 30,),
                          )
                          ,Container(
                            child:Text('Chat',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
            ,Container(
              margin: EdgeInsets.only(top: 130,bottom: 15),
              child: MaterialButton(
                onPressed:(){
                  Get.back(result:homePage());
                },
                child: Text('Cancel..',style: TextStyle(fontSize: 20,color: Colors.black),),
              ),
            )
          ],
        ),
      )
      ]
      ),
    );
  }
}
