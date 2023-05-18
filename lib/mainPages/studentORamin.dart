import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/admin/mainpage.dart';
import 'package:student/logANDreg/loginforadmin.dart';
import 'package:student/logANDreg/loginforstudent.dart';
import 'package:student/student/contactus.dart';
import 'package:student/student/studentMainPage.dart';

class stORad extends StatelessWidget {
  const stORad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/ground.jpg')
                  ,fit: BoxFit.cover
            )
          ),
          // color: Colors.white,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Image.asset('asset/per.png',width: 285,height: 285,color: Colors.white70,),
              )
              ,Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Row(
                             mainAxisAlignment: MainAxisAlignment.center
                            ,children: [
                              Text('Please , ',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19,color: Colors.purple[400]),)
                              ,Text('choose one of these')
                            ],
                          )
                          ,SizedBox(
                            height: 4,
                          )
                          ,Text('to be able to use this app.')
                        ],
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(left: 100,right: 100,top: 35),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(loginadmin());
                        },
                        child: Text('        Admin       ',style: TextStyle(fontSize: 20),),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.black26;
                              }
                              return Colors.purple[200];
                            }
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                      ) ,
                    )
                    ,Container(
                      margin: EdgeInsets.only(left: 100,right: 100,top: 25),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(studentlogin());
                        },
                        child: Text('        Student       ',style: TextStyle(fontSize: 20),),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.black26;
                              }
                              return Colors.purple[200];
                            }
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                      ) ,
                    )
                  ],
                ),
              )
              ,Container(
                margin: EdgeInsets.only(top: 80,right: 100),
                child: Column(
                  children: [
                    Container(
                      child: Text('If you don`t have an account,',),
                    )
                    ,Container(
                      child: Text('Press contact to be able to join,'),
                    )
                  ],
                ),
              )
              ,Container(
                margin: EdgeInsets.only(right: 100,top: 20),
                child: MaterialButton(
                  onPressed:(){
                    Get.to(contactUs());
                  },
                  child: Text('Contact Us ..',style: TextStyle(color: Colors.grey[700],fontSize: 20),),
                ),
              )
            ],
          ),
        )
    );
  }
}
