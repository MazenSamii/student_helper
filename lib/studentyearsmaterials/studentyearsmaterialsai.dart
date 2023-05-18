import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/student/DEPstudentmaterials.dart';
import 'package:student/yearsaddmaterials/aiaddmaterialsF.dart';
import 'package:student/yearsaddmaterials/aiaddmaterialsS.dart';
import 'package:student/yearsaddmaterials/aiaddmaterialsT.dart';
import 'package:student/yearsviewmaterials/aivmaterialsF.dart';
import 'package:student/yearsviewmaterials/aivmaterialsS.dart';

import '../yearsaddmaterials/aiaddmaterialsL.dart';
import '../yearsviewmaterials/aivmaterialsL.dart';
import '../yearsviewmaterials/aivmaterialsT.dart';

class studentyearsmaterialsai extends StatelessWidget {
  const studentyearsmaterialsai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(aiaddmaterialsF(),aiaddmaterialsS(),aiaddmaterialsT(),aiaddmaterialsL(),DEPstudentmaterials()),
    );
  }
}
