import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/student/DEPstudentsch.dart';
import 'package:student/yearsviewSCH/aiVschF.dart';
import 'package:student/yearsviewSCH/aiVschL.dart';
import 'package:student/yearsviewSCH/aiVschS.dart';
import 'package:student/yearsviewSCH/aiVschT.dart';

class studentyearsSCHai extends StatelessWidget {
  const studentyearsSCHai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(aiVschF(),aiVschS(),aiVschT(),aiVschL(),DEPstudentsch()),
    );
  }
}
