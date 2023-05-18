import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsviewSCH/biVschL.dart';
import 'package:student/yearsviewSCH/biVschS.dart';
import 'package:student/yearsviewSCH/biVschT.dart';
import '../student/DEPstudentsch.dart';
import '../yearsviewSCH/biVschF.dart';

class studentyearsSCHbi extends StatelessWidget {
  const studentyearsSCHbi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(biVschF(),biVschS(),biVschT(),biVschL(),DEPstudentsch()),
    );
  }
}
