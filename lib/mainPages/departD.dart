import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class departementD extends StatelessWidget {
  dynamic a;
  dynamic b;
  dynamic c;
  dynamic d;
  departementD(this.a,this.b,this.c,this.d);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/ground.jpg'),
            fit: BoxFit.cover,
          )
      ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(top: 180),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Choose your ',style: TextStyle(fontSize: 20),),
                    Text('Departement ',style: TextStyle(fontWeight: FontWeight.w700,fontSize:30,color: Colors.purple[300]),),
                  ],
                )
            )
            ,Container(
              margin: EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[200]
                    ),
                    child: MaterialButton(
                      onPressed:(){
                        Get.to(a);
                      },
                      child: Text('CS',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
              )
                  ,SizedBox(
                    width: 20,
                  )
                  ,Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[200]
                    ),
                    child: MaterialButton(
                      onPressed:(){
                        Get.to(b);
                      },
                      child: Text('IS',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
              )
                ],
              ),
            )
            ,SizedBox(
              height: 30,
            )
            ,Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[200]
                    ),
                    child: MaterialButton(
                      onPressed:(){
                        Get.to(c);
                      },
                      child: Text('AI',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
              )
                  ,SizedBox(
                    width: 20,
                  )
                  ,Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[200]
                    ),
                    child: MaterialButton(
                      onPressed:(){
                        Get.to(d);
                      },
                      child: Text('BI',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
              )
                ],
              ),
            )
          ],
        ),
      );
  }
}
