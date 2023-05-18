import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsviewSCH/isVschL.dart';
import 'package:student/yearsviewSCH/isVschS.dart';
import 'package:student/yearsviewSCH/isVschT.dart';

import '../student/DEPstudentsch.dart';
import '../yearsviewSCH/isVschF.dart';

class studentyearsSCHis extends StatelessWidget {
  const studentyearsSCHis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(isVschF(),isVschS(),isVschT(),isVschL(),DEPstudentsch()),
    );
  }
}
