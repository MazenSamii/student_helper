import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/departD.dart';
import 'package:student/studentyearsSCH/studentyearsSCHbi.dart';
import '../studentyearsSCH/studentyearsSCHai.dart';
import '../studentyearsSCH/studentyearsSCHcs.dart';
import '../studentyearsSCH/studentyearsSCHis.dart';
class DEPstudentsch extends StatelessWidget {
  const DEPstudentsch({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: departementD(studentyearsSCHcs(),studentyearsSCHis(),studentyearsSCHai(),studentyearsSCHbi(),),
    );
  }
}
