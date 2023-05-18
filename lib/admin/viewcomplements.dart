import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/admin/mainpage.dart';
class viewcomplements extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('Complements').get(),
          builder: (context,AsyncSnapshot x){
            if(x.hasData==false){
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 200,left: 10,bottom: 5),
                    child: Row(
                      children: [
                        Text('Loading..Please check your internet conection',style: TextStyle(fontSize: 13),)
                        ,Icon(Icons.downloading_rounded)
                      ],
                    ),
                  )
                  ,Text('No Data')
                ],
              );
            }
            else{
              return Center(
                  child:Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 80),
                        // child: Image.asset('asset/sss.png',color: Colors.black87,),
                      )
                      ,Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
            Text('Students`s',style: TextStyle(fontSize: 20),),
            Text(' complements',style: TextStyle(fontSize: 26,color: Colors.purple,fontWeight: FontWeight.w600),),
            ],
                            )

                        ,margin: EdgeInsets.only(bottom: 20),
                      )
                      ,Container(
                        margin: EdgeInsets.only(left: 30,right: 30),
                        decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(20.5)
                            ,image: DecorationImage(
                            image: AssetImage('asset/brain.png'),
                            opacity: 230
                        )
                        ),
                        height: 600,
                        child: ListView.builder(
                          itemCount: x.data.docs.length,
                          itemBuilder: (context,index){
                            return Container(
                                child:Center(
                                  child:Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 200),
                                        child: Icon(Icons.person_pin,size: 90,),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 80),
                                          child: Row(
                                            children: [
                                              Text('Name: ')
                                              ,Text(x.data.docs[index]['StdName']),
                                            ],
                                          )
                                      )
                                      ,Container(
                                          margin: EdgeInsets.only(left: 80),
                                          child: Row(
                                            children: [
                                              Text('Grade: ')
                                              ,Text(x.data.docs[index]['StdGrade']),
                                            ],
                                          )
                                      )
                                      ,Container(
                                          margin: EdgeInsets.only(left: 80),
                                          child: Row(
                                            children: [
                                              Text('Departement: ')
                                              ,Text(x.data.docs[index]['StdDepartement']),
                                            ],
                                          )
                                      )
                                      ,Container(
                                          margin: EdgeInsets.only(left: 80,bottom: 10),
                                          child: Row(
                                            children: [
                                              Text('Complement: ')
                                              ,Text(x.data.docs[index]['StdComplement']),
                                            ],
                                          )
                                      )
                                      ,Container(
                                        margin: EdgeInsets.only(left: 50,right: 50),
                                        height: 1,
                                        color: Colors.black,
                                      )
                                    ],
                                  ) ,
                                )
                            );
                          },
                        ),
                      ) ,
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: MaterialButton(
                          onPressed: (){
Get.back(result:AdminMainPage());
                          },
                          child: Text('Cancel..',style: TextStyle(fontSize: 20,color: Colors.grey),),
                        ),
                      )
                    ],
                  )

              );


            }
          },
        )
    );
  }

}