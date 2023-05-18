import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/mainPages/studentORamin.dart';
import 'package:student/student/viewADV.dart';
import 'package:student/test.dart';
import 'package:url_launcher/url_launcher.dart';

import '../logANDreg/loginFORcaht.dart';
import '../student/contactus.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final pages = [
     Container(
      // height: 200,width: 200,
      child:Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 20),
            width: 500,
            // height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'asset/k21.jpg',
                fit: BoxFit.cover,
                // width: 400,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(30)
            ),
            width: 500,
            height: 120,
            // padding: EdgeInsets.only(left: 100,right: 100),
            margin: EdgeInsets.only(top: 80,left: 10,right: 10),

            child:Center(
              child:Text(
                'كلية الحاسبات والذكاء الإصطناعى جامعة مدينة السادات تنظم ندوه بعنوان «تدشين ورشة العمل الخاصه ببدء الموسم التدريبى للمسابقه الدوليه للبرمجه»',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ),
        ],
      ),
    )
    ,Container(
      // height: 200,width: 200,
      child:Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 20),
            width: 500,
            // height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'asset/k22.jpg',
                fit: BoxFit.cover,
                // width: 400,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30)
              ),
              width: 500,
              height: 120,
              // padding: EdgeInsets.only(left: 100,right: 100),
              margin: EdgeInsets.only(top: 80,left: 10,right: 10),

              child:Center(
                child:Text(
                  'كلية الحاسبات والذكاء الإصطناعى جامعة مدينة السادات تنظم ندوه بعنوان «تدشين ورشة العمل الخاصه ببدء الموسم التدريبى للمسابقه الدوليه للبرمجه»',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),
        ],
      ),
    ),
    Container(
      // height: 200,width: 200,
      child:Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 20),
            width: 500,
            // height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'asset/k23.jpg',
                fit: BoxFit.cover,
                // width: 400,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30)
              ),
              width: 500,
              height: 120,
              // padding: EdgeInsets.only(left: 100,right: 100),
              margin: EdgeInsets.only(top: 80,left: 10,right: 10),

              child:Center(
                child:Text(
                  ' ختام دوره مبادئ لغه البرمجه لطلبه المدارس بالسادات وتوزيع الشهادات بكليه الحاسبات والذكاء الاصطناعى بالتعاون مع مركز دعم وتسويق الاختراعات والابتكار بجامعه مدينه السادات تحت رعايه السيد الاستاذ الدكتور  خالد جعفر رئيس الجامعه وتحت اشراف السيد الاستاذ الدكتور ابراهيم سليم عميد كليه الحاسبات والذكاء الاصطناعى'
                  ,style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
                ),
              )
          ),
        ],
      ),
    ),
    Container(
      // height: 200,width: 200,
      child:Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 20),
            width: 500,
            // height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'asset/k24.jpg',
                fit: BoxFit.cover,
                // width: 400,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30)
              ),
              width: 500,
              height: 120,
              margin: EdgeInsets.only(top: 80,left: 10,right: 10),

              child:Center(
                child:Text(
                  ' أناب اليوم  اللواء إبراهيم أحمد أبو ليمون محافظ المنوفية نائبه الأستاذ محمد موسى لحضور افتتاح كلية الحاسبات والذكاء الإصطناعى بجامعة السادات نائب المحافظ يشهد إفتتاح كلية الحاسبات والذكاء الاصطناعى بجامعة السادات ضمن استراتيجية الدولة للتحول الرقمى'
                  ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),
        ],
      ),
    ),
    Container(
      // height: 200,width: 200,
      child:Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 20),
            width: 500,
            // height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'asset/k25.jpg',
                fit: BoxFit.cover,
                // width: 400,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30)
              ),
              width: 500,
              height: 120,
              // padding: EdgeInsets.only(left: 100,right: 100),
              margin: EdgeInsets.only(top: 80,left: 10,right: 10),

              child:Center(
                child:Text(
                  ' أناب اليوم  اللواء إبراهيم أحمد أبو ليمون محافظ المنوفية نائبه الأستاذ محمد موسى لحضور افتتاح كلية الحاسبات والذكاء الإصطناعى بجامعة السادات نائب المحافظ يشهد إفتتاح كلية الحاسبات والذكاء الاصطناعى بجامعة السادات ضمن استراتيجية الدولة للتحول الرقمى'
                  ,style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
                ),
              )
          ),
        ],
      ),
    ),
    Container(
      // height: 200,width: 200,
      child:Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 20),
            width: 500,
            // height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'asset/k26.jpg',
                fit: BoxFit.cover,
                // width: 400,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30)
              ),
              width: 500,
              height: 120,
              // padding: EdgeInsets.only(left: 100,right: 100),
              margin: EdgeInsets.only(top: 80,left: 10,right: 10),

              child:Center(
                child:Text(
                  'تفقد معمل وقاعات محاضرات كليه الحاسبات والذكاء الاصطناعي جامعه مدينه السادات بتشريف مساعد وزير التعليم العالي ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),
        ],
      ),
    ),
  ];

  final controller = PageController();
  late Timer timer;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2), (Timer t) {
      if (currentPage == pages.length - 1) {
        currentPage = 0;
      } else {
        currentPage++;
      }
      controller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Container(
              margin:EdgeInsets.only(left: 80),
              child:Column(
                children: [
                  Text('Faculty of Computers',style: TextStyle(fontSize: 20),)
                  ,Text(' and Artificial Intelligence')
                ],
              )
              ,)
          ],
        )
        ,toolbarHeight: 100,
        backgroundColor: Colors.purple[200],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(350.5),
            )
        ),
      ),
      body:Container(
        child:ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25,left: 15),
              child: Text('About FCAI.!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.5)
              ),
              height: 200,
              child:PageView(
                controller: controller,
                children: pages,
              ),
            )
            ,Container(
              margin: EdgeInsets.only(top: 50,left: 110,right: 0),
              child: Text(' : أقسام كليه الحاسبات والذكاء الاصطناعي  ',style: TextStyle(fontSize: 18),),
            )
            ,Container(
              margin: EdgeInsets.only(
                  top: 15,left: 83
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 5,right: 5,top: 30),
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black45
                          ),
                          child: MaterialButton(
                            onPressed:(){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Icon(Icons.chat,color: Colors.purple[200],size: 50,),
                                    content:Text('computer science degree teaches you how to code and design software. And once you graduate, you can qualify for many well-paying tech jobs...'),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text('CS',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800,color: Colors.white),),
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
                              color: Colors.black45
                          ),
                          child: MaterialButton(
                            onPressed:(){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Icon(Icons.chat,color: Colors.purple[200],size: 50,),
                                    content:Text('information systems program is a unique blend of technical and business knowledge that prepares graduates to solve business problems...'),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text('IS',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800,color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  )
                  ,SizedBox(
                    height: 20,
                  )
                  ,Container(
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black45
                          ),
                          child: MaterialButton(
                            onPressed:(){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Icon(Icons.chat,color: Colors.purple[200],size: 50,),
                                    content:Text('Bioinformatics is a program that focuses on the application of computer-based technologies and services to biological, biomedical, and biotechnology research...'),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text('BI',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800,color: Colors.white),),
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
                              color: Colors.black45
                          ),
                          child: MaterialButton(
                            onPressed:(){
                              showDialog(
                                // barrierColor: Colors.black54,
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Icon(Icons.chat,color: Colors.purple[200],size: 50,),
                                    content:Text('AI is a program that focuses on the symbolic inference, representation, and simulation by computers and software of human learning and reasoning processes and capabilities, and the computer modeling of human motor control and motion...'),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text('AI',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800,color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30,left: 20,right: 20),
              height: 1,
              color: Colors.black,
            )
            ,Container(
              margin: EdgeInsets.only(top: 25,left: 15),
              child: Text('Contact Us.!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            )
            ,Container(
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
                    margin: EdgeInsets.only(bottom:25,top: 20),
                  ),
                  Text('We`re here to help you,')
                  ,Text('If you have any question you can contact us')
                  ,Text('Using...')
                  ,Container(
                    margin: EdgeInsets.only(top: 30),
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
                    margin: EdgeInsets.only(top: 40,bottom: 15),
                    child: MaterialButton(
                      onPressed:(){
                        Get.to(stORad());
                      },
                      child: Text('LogIn..',style: TextStyle(fontSize: 20,color: Colors.black),),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      )
        ,endDrawer: ClipRRect(
    borderRadius: BorderRadius.vertical(top: Radius.circular(0.0),bottom: Radius.circular(40.0)),
               child: Container(
                 margin: EdgeInsets.only(top: 70,bottom: 50),
                 child:Drawer(
                   // backgroundColor: Colors.purple[100],
               child: Container(
               child: ListView(
                 padding: EdgeInsets.only(
                 top: 0.0,
               ),
                children: [
                 Container(
                 width: 250,
                  height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/k1.jpg')
                  ,fit: BoxFit.cover
                  ,opacity: 100
              )
              ,borderRadius: BorderRadius.circular(25.5)
          ),
          margin: EdgeInsets.only(left: 3),

        )
        ,ListTile(
          leading: Icon(Icons.home,color: Colors.black,),
          title: Text('Home'),
          onTap: (){
            Get.back(result:homePage());
          },
        )
        ,ListTile(
          leading: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
          title: Text('View ADVs'),
          onTap: (){
            Get.to(viewADV());
          },
        )
        ,ListTile(
          leading: Icon(Icons.contact_phone_outlined,color: Colors.black,),
          title: Text('contact us'),
          onTap: (){
            Get.to(contactUs());
          },
        )
        ,ListTile(
          leading: Icon(Icons.login,color: Colors.black,),
          title: Text('Login'),
          onTap: (){
            Get.to(stORad());
          },
        )
        ,ListTile(
          leading: Icon(Icons.chat,color: Colors.black,),
          title: Text('chat with FCAI'),
          onTap: (){
            Get.to(chatLogin());
          },
        )
      ],
    ),
    ),
    ),
               ),
    )
    );
  }
}
