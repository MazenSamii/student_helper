import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/admin/mainpage.dart';
import 'package:student/student/contactus.dart';

import '../mainPages/studentORamin.dart';

class loginpageD extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _auth =FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  void dispose(){
    this.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  dynamic x;
loginpageD(this.x);
  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/login.jpg'),
                    opacity: 200
                )
            ),
            child:Center(
                child:ListView(
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 80),
                          child:Text('Sign In',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w700,color: Colors.purple[300])),
                        )
                        ,Container(
                          margin: EdgeInsets.only(top: 100,bottom: 40,left: 50,right: 50),
                          child: TextField(
                            onChanged: (value){
                              email=value;
                            },
                            decoration: InputDecoration(
                              hintText: "   user name",
                              hintStyle:TextStyle(
                                  fontSize: 20, color: Colors.black54, height: 0.5),
                            ),
                          ),
                        )
                        ,Container(
                          margin: EdgeInsets.only(left: 50,right: 50),
                          child: TextField(
                            obscureText: true,
                            onChanged: (value){
                              password=value;
                            },
                            decoration: InputDecoration(
                              hintText: "   password",
                              hintStyle:TextStyle(
                                  fontSize: 20, color: Colors.black54, height: 0.5),
                              suffixIcon: Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:30 ),
                          child: ElevatedButton(
                            onPressed: ()async{
                              try{
                                final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                                if(user!=null){
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(
                                      SnackBar(content: Text('LogedIn..',style: TextStyle(fontSize: 20),),backgroundColor: Colors.green,
                                      ));
                                  Get.to(x);
                                }
                              }catch(e){
                                print(e);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(
                                    SnackBar(content: Text('Error.!',style: TextStyle(fontSize: 20),),backgroundColor: Colors.red,
                                    ));
                              }
                            },
                            child: Text('            login            ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25 ),),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.black26;
                                  }
                                  return Colors.purple[300];
                                }),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30)))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Text('Forget password ?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black54),),
                        )
                        ,Container(
                            margin: EdgeInsets.only(top: 15),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Don`t have an account ?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19,color: Colors.grey),),
                                MaterialButton(
                                    onPressed: () {
                                      Get.to(contactUs());
                                    },
                                    child: Text('Contact Us')
                                )
                              ],
                            )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 100),
                          child: MaterialButton(
                              onPressed: () {
                                Get.back(result: stORad());
                              },
                              child: Text('Cancel',style: TextStyle(color: Colors.grey,fontSize: 20),)
                          ),
                        )
                      ],
                    ) ,
                  ],
                )
            )
        );
  }
}
