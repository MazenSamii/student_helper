import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsaddmaterials/csaddmaterialsF.dart';
import 'package:student/yearsaddmaterials/csaddmaterialsS.dart';

import '../student/DEPstudentmaterials.dart';
import '../yearsaddmaterials/csaddmaterialsL.dart';
import '../yearsaddmaterials/csaddmaterialsT.dart';
import '../yearsviewmaterials/csvmaterialsF.dart';
import '../yearsviewmaterials/csvmaterialsL.dart';
import '../yearsviewmaterials/csvmaterialsS.dart';
import '../yearsviewmaterials/csvmaterialsT.dart';

class studentyearsmaterialscs extends StatelessWidget {
  const studentyearsmaterialscs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(csaddmaterialsF(),csaddmaterialsS(),csaddmaterialsT(),csaddmaterialsL(),DEPstudentmaterials()),
    );
  }
}
