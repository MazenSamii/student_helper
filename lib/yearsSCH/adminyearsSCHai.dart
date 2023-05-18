import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/admin/DEPschedule.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsaddSCH/aiaddschF.dart';
import 'package:student/yearsaddSCH/aiaddschT.dart';
import '../yearsaddSCH/aiaddschL.dart';
import '../yearsaddSCH/aiaddschS.dart';
class adminyearsSCHai extends StatelessWidget {
  const adminyearsSCHai({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(aiaddschF(),aiaddschS(),aiaddschT(),aiaddschL(),DEPsch()),
    );
  }
}
