import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';

import '../admin/DEPschedule.dart';
import '../yearsaddSCH/biaddschF.dart';
import '../yearsaddSCH/biaddschL.dart';
import '../yearsaddSCH/biaddschS.dart';
import '../yearsaddSCH/biaddschT.dart';

class adminyearsSCHbi extends StatelessWidget {
  const adminyearsSCHbi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(biaddschF(),biaddschS(),biaddschT(),biaddschL(),DEPsch()),
    );
  }
}
