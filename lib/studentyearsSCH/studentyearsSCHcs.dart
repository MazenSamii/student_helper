import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsviewSCH/csVschF.dart';
import 'package:student/yearsviewSCH/csVschL.dart';
import 'package:student/yearsviewSCH/csVschS.dart';

import '../student/DEPstudentsch.dart';
import '../yearsviewSCH/csVschT.dart';

class studentyearsSCHcs extends StatelessWidget {
  const studentyearsSCHcs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(csVschF(),csVschS(),csVschT(),csVschL(),DEPstudentsch()),
    );
  }
}
