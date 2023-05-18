import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/student/DEPstudentmaterials.dart';

import '../yearsaddmaterials/biaddmaterialsF.dart';
import '../yearsaddmaterials/biaddmaterialsL.dart';
import '../yearsaddmaterials/biaddmaterialsS.dart';
import '../yearsaddmaterials/biaddmaterialsT.dart';
import '../yearsviewmaterials/bivmaterialsF.dart';
import '../yearsviewmaterials/bivmaterialsL.dart';
import '../yearsviewmaterials/bivmaterialsS.dart';
import '../yearsviewmaterials/bivmaterialsT.dart';

class studentyearsmaterialsbi extends StatelessWidget {
  const studentyearsmaterialsbi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(biaddmaterialsF(),biaddmaterialsS(),biaddmaterialsT(),biaddmaterialsL(),DEPstudentmaterials()),
    );
  }
}
