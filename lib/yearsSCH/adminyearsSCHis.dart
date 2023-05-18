import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';

import '../admin/DEPschedule.dart';
import '../yearsaddSCH/isaddschF.dart';
import '../yearsaddSCH/isaddschL.dart';
import '../yearsaddSCH/isaddschS.dart';
import '../yearsaddSCH/isaddschT.dart';

class adminyearsSCHis extends StatelessWidget {
  const adminyearsSCHis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(isaddschF(),isaddschS(),isaddschT(),isaddschL(),DEPsch()),
    );
  }
}
