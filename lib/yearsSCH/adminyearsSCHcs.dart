import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';

import '../admin/DEPschedule.dart';
import '../yearsaddSCH/csaddschF.dart';
import '../yearsaddSCH/csaddschL.dart';
import '../yearsaddSCH/csaddschS.dart';
import '../yearsaddSCH/csaddschT.dart';

class adminyearsSCHcs extends StatelessWidget {
  const adminyearsSCHcs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(csaddschF(),csaddschS(),csaddschT(),csaddschL(),DEPsch()),
    );
  }
}
