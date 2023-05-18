import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/admin/mainpage.dart';

class addADV extends StatelessWidget {
  TextEditingController ADV = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          color: Colors.white,
          child:Center(
            child:ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Image.asset('asset/advvv.jpg',width: 280,height: 300,),
                    )
                    ,Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Add your ',style: TextStyle(fontSize: 20)),
                          Text('Advertisement ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.purple[200]),),
                          Text('here.. ',style: TextStyle(fontSize: 20)),
                          Icon(Icons.arrow_downward,)
                        ],
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(left: 50,right: 50,top: 40),
                      child: TextField(
                        controller: ADV,
                        decoration: InputDecoration(
                            hintText: '                     Advertisement..?'
                            ,hintStyle: TextStyle(fontSize: 17,color: Colors.grey)
                        ),
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(top: 30,left: 80,right: 80),
                      child: MaterialButton(
                          color: Colors.purple[100],
                          onPressed: (){
                            String a= ADV.text;
                            FirebaseFirestore.instance.collection('ADVV').add(
                                <String,dynamic>{
                                  "AdminADV":a,
                                }
                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Icon(Icons.done,color: Colors.purple[200],size: 50,),
                                  content:Text('Your Advertisement is added successfully..'),
                                  actions: <Widget>[
                                    MaterialButton(
                                      onPressed: () {
                                        Get.off(AdminMainPage());
                                      },
                                      child: Text('Home'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Add one more'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('ADD ',style: TextStyle(fontSize: 20),),
                              Icon(Icons.done_all,size: 25,)
                            ],
                          )
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(top: 100,),
                      child: MaterialButton(
                        onPressed: (){
Get.back(result: AdminMainPage());
                        },
                        child: Text('Cancel..',style: TextStyle(fontSize: 20,color: Colors.grey),),
                      ),
                    )
                  ],
                ),
              ],
            )

          )
        )
    );
  }
}
