import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/mainPages/homePage.dart';
import 'package:student/mainPages/studentORamin.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://i.pinimg.com/564x/15/76/7e/15767e369973aaa03b385dd365efc0ce.jpg' ),
              opacity: 20
            )
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 150,),
                  child: Center(
                    child: Text('FCAI',style: TextStyle(fontSize: 130,fontWeight: FontWeight.w400,color: Colors.black54),),
                  )
              )
              ,Container(
                margin: EdgeInsets.only(top: 220),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('asset/Welcome.png',color: Colors.grey[700],width: 500,height: 100,)
                    ,Text('In Faculty of Computers and Artificial Intelligence ',style: TextStyle(fontSize: 16,color: Colors.black54))
                  ],
                ),
              )
              ,Container(
                margin: EdgeInsets.only(top: 100),
                child: MaterialButton(
                  onPressed: (){
                    Get.to(homePage());
                  },
                  child: Text('Next..',style: TextStyle(fontSize: 25,color: Colors.black54),),
                ),
              )
            ],
          ),
        )
    );
  }
}
