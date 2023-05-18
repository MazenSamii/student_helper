import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class yearsD extends StatelessWidget {
  dynamic a;
  dynamic b;
  dynamic c;
  dynamic d;
  dynamic e;
  yearsD(this.a,this.b,this.c,this.d,this.e);
  // const yearsD({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/ground.jpg'),
              fit: BoxFit.cover,
            )
        ),
      child:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(

              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30,left: 70,right: 70,top: 180),
                  child: MaterialButton(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      onPressed:(){
                        Get.to(a);
                      },
                      child:Center(
                        child: Text('First Year',style: TextStyle(fontSize: 20),),
                      )
                  ),
                )
                ,Container(
                  margin: EdgeInsets.only(bottom: 30,left: 70,right: 70),
                  child: MaterialButton(
                    padding: EdgeInsets.all(10),
                      color: Colors.white,
                      onPressed:(){
                        Get.to(b);
                      },
                      child:Center(
                        child: Text('Second Year',style: TextStyle(fontSize: 20),),
                      )
                  ),
                )
                ,Container(
                  margin: EdgeInsets.only(bottom: 30,left: 70,right: 70),
                  child: MaterialButton(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      onPressed:(){
                        Get.to(c);
                      },
                      child:Center(
                        child: Text('Third Year',style: TextStyle(fontSize: 20),),
                      )
                  ),
                )
                ,Container(
                  margin: EdgeInsets.only(bottom: 0,left: 70,right: 70),
                  child: MaterialButton(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      onPressed:(){
                        Get.to(d);
                      },
                      child:Center(
                        child: Text('Last Year',style: TextStyle(fontSize: 20),),
                      )
                  ),
                )
              ],
            )
            ,Container(
              margin: EdgeInsets.only(top: 200),
              child: MaterialButton(
                onPressed:(){
                  Get.back(result: e);
                },
                child: Text('Cancel..',style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      )
    );
  }
}
